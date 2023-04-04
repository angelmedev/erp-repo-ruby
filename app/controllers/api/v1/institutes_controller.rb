require "csv"
module Api
  module V1
    class InstitutesController < ApplicationController
      protect_from_forgery with: :null_session

      protect_from_forgery except: [:create]

      def index
        if params[:search].present?
          search = params[:search].gsub!(/[^.,a-zA-Z0-9 \n\.\-]/, '')
          params[:search] = search if search.present?
          @institutes = Institute.where(institute_name: /#{params[:search]}/i).or(institute_code: /#{params[:search]}/i).paginates_per(page: 1, per_page: 1)
        else
          @institutes = Institute.all.paginate(page: params[:page], per_page: params[:page_size])
        end

      end

      def show
      end

      def create
        debugger
        # user = create_user()
        # @institute = create_instittue("internal_user_id")
      end
      
      def create_by_external
        user = create_user()
        institute = create_instittue("organic")
      end

      def update
      end

      def destroy
      end

      private
      
      def create_instittue(created_by)
        institute = Institute.new(params.require(:institute).permit(:institute_name, :institute_code))
        institute.created_by = created_by
        institute.save!
        institute
      end
      
      def create_user()
        user = User.create(params.require(:institute).permit(:name, :email, :mobile))
        user
      end



    end
  end
end


# Configurable Managment roles
# Validation API - 

class Api::V1::UsersController < ApplicationController
  
  # before_action :require_login, only: [:show]
  
  def index
    @users = User.all
    render json: { users: @users.to_json }, status: 200
  end
  
  def create
    if params[:type] == "student"
      user = Student.create(params.permit(:name, :email, :mobile, :password, :password_confirmation, :roll))
    elsif params[:type] == "teacher"
      user = Teacher.create(params.permit(:name, :email, :mobile, :password, :password_confirmation, :subject))
    else
      user = User.new(user_params)
    end
    @user = user
    render json: { users: @user.to_json }, status: 200
  end
  
  def show
    @user = User.find(params[:id])
    render json: { users: @user.to_json }, status: 200
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(permitted_attributes())
    render json: { users: @user.to_json }, status: 200
  end
  
  def bulk_create
    # sheet = get_document()
    workbook = Roo::Spreadsheet.open('/Users/akumar6/Downloads/results.xlsx')
    
    sheet = workbook.sheet(workbook.sheets.first)
    byebug
    f = 0
    # object_map = { Hero => { id: 'Hero ID', name: 'Hero Name', location: 'Location' } }
    
    # HEADERS = ['Hero ID', 'Hero Name', 'Location']
    
    # rows.each(headers: ->(row) { (HEADERS & row).any? }) do |row|
    #   object_map.each_pair do |klass, attribute_map|
    #     attributes =
    #     attribute_map.each_pair.with_object({}) do |(key, header), attrs|
    #       attrs[key] = row[header]
    #     end
    #     klass.new(attributes)
    #   end
    # end
  end
  
  private

  def permitted_attributes
    user = [:name, :email, :mobile, :password, :password_confirmation]
    teacher = [:subject]
    student = [:roll]
    attributes = @user._type == "Student" ? student : teacher
    params.permit(user + attributes)
  end


  def csv_parser
    # data_text = CSV.read(file.path)
    # csv = CSV.parse(data_text, headers: true)
    # csv.each do |row|
    #   puts row.to_hash
    # end
  end
  
end

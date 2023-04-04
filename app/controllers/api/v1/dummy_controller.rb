module Api
    module V1
        class DummyController < ApplicationController

            def create
                dummy = Dummy.create({data: 'Added data!'})
                render json: {data: dummy.as_json}, status: '200'
            end
            def index
                d = Dummy.all
                render json: {data: d.to_json}, status: '200'
            end
        end
    end
end
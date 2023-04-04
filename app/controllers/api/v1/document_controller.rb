class Api::V1::DocumentController < ApplicationController

  def upload_file
    file = params[:file]
    byebug
    data = CSV.parse(file.read, headers: true)
    data.each do |row|
    end
  end
end



# upload_file > S3 > document_path/id >> bulk_create > Fetch from S3 > Read > Save data


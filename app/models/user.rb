class User
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: :users

  field :name, type: String
  field :email, type: String
  field :mobile, type: String
  field :gender, type: String
  field :dob, type: Date
  field :rating, type: String
  field :reviews, type: String
  field :password, type: String
  field :password_confirmation, type: String

  # embeds_many :address, class_name: 'Address'

  field :password_digest, type: String

end

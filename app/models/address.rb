class Address
  
  field :line1, type: String
  field :city, type: String
  field :landmark, type: String
  field :district, type: String
  field :state, type: String
  field :country, type: String
  field :pincode, type: String

  embedded_in :user, class_name: 'User'

end

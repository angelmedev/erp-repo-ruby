class Institute
  # include ActiveModel::SecurePassword
  include Mongoid::Document
  include Mongoid::Timestamps

  field :institute_name, type: String
  field :institute_code, type: String
  field :address, type: Hash
  field :pincode, type: Integer
  field :support_email, type: String
  field :unique_code, type: String
  field :created_by, type: String
  field :state, type: String, default: "lead"

  STATE = {
    lead: "lead",
    new: "new",
    onboarded: "onboarded",
    inactive: "inactive",
    hold: "hold"
  }

end


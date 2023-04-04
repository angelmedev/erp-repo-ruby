class Teacher < User

  field :department, type: String
  field :subject, type: String
  field :class_room, type: String
  field :section, type: String
  field :education, type: String
  field :experience, type: String
  field :verified, type: Boolean

end

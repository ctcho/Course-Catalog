class Course < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :subjects

  def self.search(parameters)
    #Here until I understand more about the has_many stuff.
    Course.where("name LIKE ?", parameters[:course_name])
  end
end

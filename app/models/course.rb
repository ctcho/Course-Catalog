class Course < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :subjects

  def self.search(parameters)
    if parameters[:course_name].empty? #User left the Name field blank
      s = Subject.find(parameters[:subject_name]) #Do-able since subjects and courses are in a has_and_belongs_to_many relation
      return s.courses
    elsif Integer(parameters[:subject_name]) == 0 #User left the Subject field blank
      Course.where("name LIKE ?", parameters[:course_name])
    else #User filled in both fields
      Course.where("name LIKE ?", parameters[:course_name]).merge(
      Course.joins(:subjects).where("name LIKE ?", parameters[:subject_name]))
    end
  end
end

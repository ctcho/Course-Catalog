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
      c = Course.joins(:subjects).where("name LIKE ?", parameters[:subject_name])
      c = c.where("name LIKE ?", parameters[:course_name])
      return c
    end
  end

  def self.enrollment(parameters)
      c = Course.find_by(name: parameters[:course_name])
      u = User.find_by(name: parameters[:user_name])
      u.courses << c #Only need to do this once, given the "has_and_belongs_to_many" relation.
  end
end

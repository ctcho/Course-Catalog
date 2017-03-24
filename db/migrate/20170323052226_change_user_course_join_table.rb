class ChangeUserCourseJoinTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :courses_users, :enrollment
  end
end

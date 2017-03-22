class AddSubjectsCoursesAndInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |a|
      #Must be an array of :id, :name #not sure how to do that...
      a.string :id_number #since Rails complains if you just use plain old "id..."
      a.string :name
    end

    create_table :courses do |b|
      b.string :name
      b.string :code
      b.string :description
      b.string :independent_study
    end

    create_join_table :subjects, :courses do |t|
      t.index :subject_id
      t.index :course_id
    end

    create_table :instructors do |c|
      c.string :id_number #same situation as with the :subjects table.
      c.string :first
      c.string :last
      c.string :email
    end
  end
end

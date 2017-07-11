class AddSthToCourseRelationship < ActiveRecord::Migration[5.0]
  def change
    add_column :course_relationships, :student_id, :integer
    add_column :course_relationships, :course_id, :integer
  end
end

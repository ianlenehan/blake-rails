class AddProgressToStudents < ActiveRecord::Migration
  def change
    add_column :students, :current_lesson, :integer
    add_column :students, :current_part, :integer
  end
end

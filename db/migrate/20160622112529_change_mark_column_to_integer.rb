class ChangeMarkColumnToInteger < ActiveRecord::Migration
  def change
    change_column :marks, :mark, :integer
  end
end

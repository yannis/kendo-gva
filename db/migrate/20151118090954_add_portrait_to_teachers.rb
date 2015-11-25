class AddPortraitToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :portrait, :string
  end
end

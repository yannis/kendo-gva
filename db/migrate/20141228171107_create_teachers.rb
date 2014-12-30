class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :grade
      t.boolean :active, default: false

      t.timestamps
    end
  end
end

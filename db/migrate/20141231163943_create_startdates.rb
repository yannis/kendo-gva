class CreateStartdates < ActiveRecord::Migration
  def change
    create_table :startdates do |t|
      t.date :start_on

      t.timestamps
    end
  end
end

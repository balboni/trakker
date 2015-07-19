class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :owner
      t.string :sponsor
      t.date :date_started
      t.date :date_completed
      t.text :comment

      t.timestamps null: false
    end
  end
end

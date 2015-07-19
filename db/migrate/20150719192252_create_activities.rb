class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :subject
      t.string :owner
      t.date :date_start
      t.date :date_due
      t.text :comments

      t.timestamps null: false
    end
  end
end

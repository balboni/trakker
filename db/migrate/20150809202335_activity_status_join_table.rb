class ActivityStatusJoinTable < ActiveRecord::Migration
  def change
    create_join_table :activities, :statuses do |t|
      t.index [:activity_id, :status_id], unique: true
      # t.index [:status_id, :activity_id]
    end
  end
end

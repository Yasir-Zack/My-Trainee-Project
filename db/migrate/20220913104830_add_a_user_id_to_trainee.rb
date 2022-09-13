class AddAUserIdToTrainee < ActiveRecord::Migration[5.2]
  def change
    add_column :trainees, :user_id, :string
    add_index :trainees, :user_id
  end
end

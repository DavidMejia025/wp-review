class CreatePullRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :pull_requests do |t|
      t.developer_id :
      t.string :branch_name
      t.string :name
      t.text   :files_changed

      t.timestamps
    end

    add_index :pull_requests, :developer_id
    add_index :pull_requests, :ticket_id
    add_index :pull_requests, :sub_ticket_id
    add_index :pull_requests, :comments_id
  end
end

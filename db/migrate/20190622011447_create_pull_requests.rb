class CreatePullRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :pull_requests do |t|
      t.string  :branch_name
      t.string  :name
      t.text    :files_changed
      t.integer :developer_id
      t.integer :ticket_id
      t.integer :sub_ticket_id
      t.integer :comment_id
      t.integer :commmit_id
      
      t.timestamps
    end

    add_index :pull_requests, :developer_id
    add_index :pull_requests, :ticket_id
    add_index :pull_requests, :sub_ticket_id
    add_index :pull_requests, :comment_id
    add_index :pull_requests, :commmit_id
  end
end

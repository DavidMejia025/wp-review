class AddColumnToPullRequests < ActiveRecord::Migration[5.2]
  def change
    change_column :pull_requests, :developer_id, :integer, :default => 0, :null => false
    change_column :pull_requests, :ticket_id, :integer, :default => 0, :null => false
    change_column :pull_requests, :comment_id, :integer, :default => 0, :null => false
    change_column :pull_requests, :commmit_id, :integer, :default => 0, :null => false
  end
end

class ChangeColumnSubTicketToPullRequests < ActiveRecord::Migration[5.2]
  def change
    change_column :pull_requests, :sub_ticket_id, :integer, :default => 0, :null => false
  end
end

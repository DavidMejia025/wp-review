# == Schema Information
#
# Table name: pull_requests
#
#  id            :bigint           not null, primary key
#  branch_name   :string
#  name          :string
#  files_changed :text
#  developer_id  :integer          default(0), not null
#  ticket_id     :integer          default(0), not null
#  sub_ticket_id :integer          default(0), not null
#  comment_id    :integer          default(0), not null
#  commmit_id    :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PullRequest < ApplicationRecord
  belongs_to :develope
  belongs_to :ticket
  belongs_to :sub_ticket

  has_many   :comments
  has_many   :commits


#TODO add scopes.

  def self.sum
    puts 2
  end

  def self.send_request(url: "")
    github_base_end_point = "https://api.github.com/"

    puts HTTParty.get(github_base_end_point+url)
  end
end

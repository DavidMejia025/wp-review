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

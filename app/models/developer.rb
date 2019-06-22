# == Schema Information
#
# Table name: developers
#
#  id         :bigint           not null, primary key
#  name       :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Developer < ApplicationRecord
  def self.sum
    puts 2
  end

  def sun
    puts 5
  end

  def self.send_request(url: "")
    github_base_end_point = "https://api.github.com/"
    request = github_base_end_point+url
    puts request
    puts HTTParty.get(request)
  end
end

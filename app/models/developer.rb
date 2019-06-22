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

class Developer < ApplicationRecord
  def self.sum
    puts 2
  end

  def sun
    puts 5
  end

  def self.send_request(url: "")
    root    = "https://api.github.com/"
    request = root+url

    gh_response  = HTTParty.get(request)

    if gh_response.response["status"] == "200 OK"
      response = parse_gh_response(response: gh_response)
    else
      puts gh_response
    end

    byebug
  end

  def self.parse_gh_response(response:)
    response = JSON.parse(response.body)

    return response.with_indifferent_access if response.is_a? Hash

    response.map { |item| item.with_indifferent_access }
  end
end

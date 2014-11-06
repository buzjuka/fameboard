class Commander

  def self.send_event(inscription)
    achiever_host = "192.168.33.7"
    achiever_port = 3001
    achiever_path = "http://#{achiever_host}:#{achiever_port}/api/event/fameboarder"
    url = URI.parse(achiever_path)
    resuqest_body = {
      name: inscription.name,
      description: inscription.description,
      positive: inscription.positive
    }.to_json
    req = Net::HTTP::Post.new(url, initheader = {'Content-Type' =>'application/json'})
    req.body = resuqest_body
    response = Net::HTTP.new(achiever_host,achiever_port).start { |http| http.request(req) }
    raise 'Api return 404' if response.code == "404"
  end
end
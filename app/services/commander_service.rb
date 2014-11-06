class CommanderService
  def initialize(inscription)
    @inscription = inscription
  end
  def send_event
    achiever_path = "#{App.achiever_proto}://#{App.achiever_host}:#{App.achiever_port}/api/event/fameboarder"
    url = URI.parse(achiever_path)
    request_body = @inscription.attributes.to_json
    req = Net::HTTP::Post.new(url, initheader = {'Content-Type' =>'application/json'})
    req.body = request_body
    response = Net::HTTP.new(App.achiever_host,App.achiever_port).start { |http| http.request(req) }
  end
end
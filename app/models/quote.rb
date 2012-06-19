class Quote
  require 'httparty'
  
  def self.random
    options = { :query => { :source => "hitchhiker" }}
    HTTParty.get("http://www.iheartquotes.com/api/v1/random", options).split("\n\n")[0]
  end
end
#twitter_bot.rb #

require 'dotenv'

Dotenv.load('.env') 

require 'twitter'

client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

puts  ENV['TWITTER_CONSUMER_KEY']

client.update('my first Ruby tweet!')


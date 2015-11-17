require 'twitter'

templates = [
    "My uncle works at Nintendo and he said %d is the year of %s.",
    "OPINION: is %d the Year of %s?",
    "%d is the Year of %s! #nintendolife #gameon #playitloud",
    "RUMOR: %d to be declared the Year of %s by Nintendo",
    "I'm hearing rumblings that Nintendo will announce %d as the Year of %s...",
    "Did you hear? #Nintendo wants to make %d the Year of %s!",
    "Dear Nintendo, PLEASE make %d the Year of %s!!!!!",
    "haha what if Nintendo made %d the year of %s?",
    "ok seriously tho if Nintendo doesn't make %d the year of %s I'll die",
    "I'll buy a Nintendo console in %d if Nintendo makes it the Year of %s",
]

def character
  File.readlines(Dir.glob('./*.txt').to_a.sample).sample.chomp
end

client = Twitter::REST::Client.new do |config|
    config.consumer_key       = ENV['TWITTER_CONSUMER_KEY']
    config.consumer_secret    = ENV['TWITTER_CONSUMER_SECRET']
    config.access_token        = ENV['TWITTER_OAUTH_TOKEN']
    config.access_token_secret = ENV['TWITTER_OAUTH_SECRET']
end

characters = "#{character} and #{character}"
client.update(templates.sample % characters)

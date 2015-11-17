require 'twitter'

templates = [
    "BREAKING NEWS: New Amiibos confirmed: %s!!!",
    "etika's latest vid says next amiibo wave has %s? nfw lol",
    "New Amiibo wave rumored to include %s, Nintendo Direct scheduled for tomorrow",
    "TARGET EXCLUSIVE CADMIUM-PLATED AMIIBOS!!! New Characters include %s",
    "Hearing rumblings that the next announced wave of Amiibos will have %s. Whoa.",
    "Not sure if I'm translating this right but according to 2ch %s are Japan-only Amiibo????",
    "Nintendo KNOWS me: I can't wait to pick up %s from the next Amiibo wave",
    "Exciting news!!!! %s are the next Amiibos coming out!!!!",
    "I never thought I'd see the day when %s got made into Amiibos... so hype that they're next",
    "yes yes yes MORE AMIIBO: %s IN THE NEXT WAVE!",
    "Thought you'd be waiting forever for %s Amiibos? Think again",
    "I just hope Nintendo realizes they NEED to make 10x as many %s amiibos to meet demand",
    "I'm gonna cry if I can't get ahold of %s from the new amiibo wave",
    "I LOVE AMIIBO and I am soooo excited for %s",
    "They can probably stop making new Amiibo once %s come out",
    "CANNOT. BELIEVE. IT. %s Amiibo? THANK YOU NINTENDO!!!!!"
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

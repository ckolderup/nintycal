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

character = File.readlines(Dir.glob('./*.txt').to_a.sample).sample.chomp
year = Time.now.year + rand(1..2000)

puts templates.sample % [year, character]

require 'httparty'

response = HTTParty.get('https://slack.com/api/users.getPresence', headers: {"Authorization" => "Bearer xoxp-2897666266758-2928076043648-2904414272418-6b791fd76a57369c335202d67022ffdc"})
puts response.body if response.code == 200

#HTTParty.get("https://slack.com/api/users.getPresence", headers: {"Authorization" => "Token token=\"111\""}) 
#or headers: { "Authorization" => "Bearer your_token_here" }
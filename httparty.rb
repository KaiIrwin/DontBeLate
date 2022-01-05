require 'httparty'

# Auth key updates. You need to change the Auth key once in a while and you need to autimate that
presenceOfUserFullAPIResponse = HTTParty.get('https://slack.com/api/users.getPresence', headers: {"Authorization" => "Bearer xoxp-2897666266758-2928076043648-2906416966645-6238ebabc164b6b6ec0bd5b718263ef6"})

presenceOfUser = presenceOfUserFullAPIResponse["online"]

# Doing 条件分岐 on the presenceOfUser
if presenceOfUser == true
    resultOfTheDeal = 'おめでとうございます。今回は無課金です。仕事頑張ってください！'
else 
    resultOfTheDeal = '課金します。自分で決めた約束は守ろう！勉強代だと思って払ってください。'
end




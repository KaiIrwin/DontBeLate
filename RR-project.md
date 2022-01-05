# Goal
- 勉強のために作る
# 分解
- UI part
- API part
- backend ?
# Feedback loop

# 計画
- lean buiding で
- 12/6 まで prototype ver.1 を発表
  - mezamee の名前で 記事通りに骨格を作成
  - make a home 画面！ so you can link the links
    1. rooting
    2. controler
    3. index.html -> この段階まで来たら、どんどん自分の project 用に実装する
    4. migration -> 5.1 もモデルを生成から
   Deal input page の
    1. backend を connect
    2. create (are you sure かなんかで) 作る (変更とか削除はない)
  - make better UI and shit and start googling
  - make pop up
  - get more back end shit
  - design API part
    - https://api.slack.com/events/app_home_opened これちゃう？？
  - 上田さんにまじで質問
- 12/8 で prototype ver 2? -> なぜなら 12/7 が出社だから


skipped 6.2 !!


Q i dont know how to connect the input data of time and money into the backend
+ what is the data type for time? cuz i need to do  
  bin/rails generate model Deal time:integer money:integer article:references and "time:integer" の部分が絶対おかしいから

- cant save input


ariticle controller と make the deal  view で:name :cntent をそれぞれ :time :money に変更した

後  ariticle controller line 8  に puts params [:time] [:money] に変更 もともとは　line 9 に  puts params[:name] line 8 にputs params だけだった

time が backend に表示されない 20211208121407_create_deals の time; integer を datetim にしてみた

Q UI もっと普通に html みたいにできないん？

Q API つける

Q if else js どこに書くねん

Q 写真アップ

# task [use the root cause frame]
### 2022.1.1
### Root cause analisys
- I cant connect the slack API to my app
  - I cant connect a 3rd party API to anything
    - I dont know how to 
    - I dont understand the vids
    - 背景知識
    - Source
      - Ask someone
  - The slack API is a bit different / hard from other APIs
    - Cuz i think its hard
      - cuz its the first time reading documentation and shit
    - Cuz I dont know the 特徴 of slack APIs 
      - Maybe cuz i need to know more about chat app APIs and overall 種類 and shit?
### Solution
1. Google how to connect Slack API to app: meh, best thing was the slack API official docs
2. Google how to connect APIs to your app
   - ok so i think i need to CALL from Slack API to see whether the person is on Slack or not-> i need to use request methods
   - I got to the web API method list of slack *
   - If i googled how to use API on rails, i spoted people using postman. and there were a few vids on that if i googled postman rails  * 
   - あと　Slack docs に tutorials もある！*
   - [戦略] Skim the Slacl API docs -> watch postman rails video
   - Events API の中に入ってそう。 Event API = when making apps that RESPOND to slack app functianality
     - You need to 1. subscribe to an event (i think you look for that from the event types list?) 2. make an app that reacts to that event
     - SUBSCRIBING: after making a slack app, <- 謎 on slack, find the "Event Subscriptions" configuration page and turn it on 
       - MAKING A SLACK APP https://www.youtube.com/watch?v=25ArxpK48tU
       
3. Ask someone about how to connect APIs to apps
4. Google about Slack API and see if its different from others
5. Google about how to read API docs
6. Read a book about how to connect APIs to apps

### 2022.1.4
- Issue no.1  大筋複数個 -> dive a little bit and 斬りつける 無理なら聞く XD DONE ! 😎 
  - HTTParty を使用して get する
    - But how do i get the JSON file (how do i know its working) DONE ! 
  - 他の gem を利用する
  - Just use CURL or postman and connected it from there?
- 上田さん整理
  
- Do 条件分岐 on the JSON result you got
  - First i need to parse the JSON. And get the "presence" / "online" part
    - Parse JSON and give it a variable name, then do the 条件分岐　code on the local ruby file using that variable 
      - Find a way to just use code from the terminal
        - i googled 'manipulate json from bash' でも明らかに筋悪そうなので却下
        - 日本語でもターミナルの json をローカルに とかってやったけどいいやつがない
    - Do the parsing and 条件分岐 all on the terminal 
    - Just fucking use postman or curl maybe lol 
  
- I need a way to call the https thing on a set TIME . which is the 覚悟時間
  => [重要質問] Should i make the code so that the code can call trhe API at the 覚悟時間, then make the parse and 条件分岐 code. Or other way round. ... 正直いつ発火させるかみたいな要素はあまり parse と 条件分岐 の code に関係性あまりなさそう。But you should ask just in case.

  ### 2022.1.5 質問
  - 別の file の変数を erb file に反映させる方法 [done]
    - you need to write this on your controller ! 
    - [] controller の部分の整理タスクは必須や
    - so httparty は本来は controller にあるべきものであったってことやな
  - backend にある data (覚悟時間とか)を表示さあせたい
  - Auth key peoblemm [保留]
  - 指定時間で API を発火？ そもそもそれする必要があるのか自体危うい 




token refresh に関して
- 勉強目的なので無視する
- if refresh されているなら
  - OAuth v２ (tab にある) の API 
  - 別の API で取得
  - https://api.slack.com/admins/audit-logs -> そもそも
- 別の人
- https://ifttt.com/ or zapier 使ってみる
- スクレーピングする ->  


### 2022.1.6
- GET THE botstrap pic to load lol 
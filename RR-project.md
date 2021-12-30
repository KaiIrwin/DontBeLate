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
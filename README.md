TimeScheduleBOT
===============

時間割を呟くTwitterBOT。

天気をツイートする機能も付けたいですね。



main.rb
------------------

・TwitterのCousumerKey,ConsumerSecret,AccessToken,AccessTokenSecretなどの定義
・時間割（ツイートする内容）などの定義

はこちらから行う。



clock.rb
------------------

・clockworkで何時に動作させるかを定義




その他のファイル
------------------

別にいじらなくてもいい気がする。




How to use
------------------

ソースコード改変して、
作成したheroku appsにgit push heroku masterしちゃって、

$ heroku config:add TZ=Asia/Tokyo

$ heroku ps:scale clock=1

で動くんじゃないですかね。

わからないところは各自でggってみてください。



Created by tsux89 ( https://twitter.com/x89 )


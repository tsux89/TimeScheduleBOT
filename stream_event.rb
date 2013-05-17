# coding:UTF-8

require 'twitter'
require 'tweetstream'


ck = 'IQKbtAYlXLripLGPWd0HUA'
cs = 'GgDYlkSvaPxGxC4X8liwpUoqKwwr3lCADbz8A7ADU'
at = ''
ats = ''


# -------------AUTH TWITTER------------- #

$host = Twitter::Client.new(
	:consumer_key		=> ck,
	:consumer_secret	=> cs,
	:oauth_token		=> at,
	:oauth_token_secret	=> ats
)

# -------------------- DEFINE WEEK VALUE -------------------- #

t = Date.today
n = DateTime.now


# -------------------- JUDGE SENTENCES -------------------- #
def tweet
	if t.wday == 0 then
		twit = "月曜日の時間割は\n1st.英語理解\n2nd.情報A\n3rd.数学Ⅱ\n4th.体育（武道ダンス）\n5th.生物基礎\n6th.現代文\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒"
	elsif t.wday == 1 then
		twit = "火曜日の時間割は\n1st.古典\n2nd.PEⅡ\n3rd.生物基礎\n4th.数学B\n5th.英語理解\n6th.世界史・日本史B選択\n7th.LHR\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒"
	elsif t.wday == 2 then
		twit = "水曜日の時間割は\n1st.現代文\n2nd.英語理解\n3rd.体育（球技選択）\n4th.数学Ⅱ\n5th.情報A\n6th.世界史・日本史・地理A選択\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒"
	elsif t.wday == 3 then
		twit = "木曜日の時間割は\n1st.保健\n2nd.古典\n3rd.数学B\n4th.世界史・日本史・地理A選択\n5th.世界史・日本史B選択\n6th.GEⅠ\n7th.総合的学習\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒"
	elsif t.wday == 4 then
		twit = "金曜日の時間割は\n1st.古典\n2nd.世界史・日本史B選択\n3rd.数学Ⅱ\n4th.GEⅠ\n5th.英語理解\n6th.PEⅡ\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒"
	end
end




# -------------------- STREAMING -------------------- #


TweetStream.configure do |config|
	config.consumer_key		= ck
	config.consumer_secret		= cs
	config.oauth_token		= at
	config.oauth_token_secret	= ats
	config.auth_method		= :oauth
end

client = TweetStream::Client.new




client.userstream do |status|
	puts "#{status.user.screen_name}: #{status.text}"
	str = status.text
	if /(翌日|明日)の時間割/=~ str then
		tweet()
		$host.update("@#{status.user.screen_name} \n #{twit}", in_reply_to_status_id: status.id)
	end
end

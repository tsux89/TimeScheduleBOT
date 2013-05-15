# coding:UTF-8

# ------------REQUIRE MODULES------------- #

require 'twitter'
require 'pp'
require 'date'

# ---------------DEFINE A DOOR OF CLOCKWORK-------------- #

def main
	
# -----------------DEFINE WEATHER-------------- #




# ------------------DEFINE VALUES----------------- #

ck = 'IQKbtAYlXLripLGPWd0HUA'
cs = 'GgDYlkSvaPxGxC4X8liwpUoqKwwr3lCADbz8A7ADU'
at = ''
ats = ''

# -------------------DEFINE WEEK VALUE-------------------- #

# today.wday <- week   0:sun ... 6:sat
t = Date.today
n = DateTime.now


# -------------AUTH TWITTER------------- #

$host = Twitter::Client.new(
	:consumer_key		=> ck,
	:consumer_secret	=> cs,
	:oauth_token		=> at,
	:oauth_token_secret	=> ats
)


# -------------CHECK TODAYS WEEK AND TWEET------------- #

# if today is ***day, i tweet this status.

if t.wday == 0 then
$host.update("月曜日の時間割は\n1st.****\n2nd.****\n3rd.****\n4th.****\n5th.****\n6th.****\n7th.****\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒")
elsif t.wday == 1 then
$host.update("火曜日の時間割は\n1st.****\n2nd.****\n3rd.****\n4th.****\n5th.****\n6th.****\n7th.****\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒")
elsif t.wday == 2 then
$host.update("水曜日の時間割は\n1st.****\n2nd.****\n3rd.****\n4th.****\n5th.****\n6th.****\n7th.****\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒")
elsif t.wday == 3 then
$host.update("木曜日の時間割は\n1st.****\n2nd.****\n3rd.****\n4th.****\n5th.****\n6th.****\n7th.****\nです。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒")
elsif t.wday == 4 then
$host.update("金曜日の時間割は\n1st.****\n2nd.****\n3rd.****\n4th.****\n5th.****\n6th.****\n7th.****\nす。\n#{n.month}月#{n.day}日#{n.hour}時#{n.min}分#{n.sec}秒")
end

end

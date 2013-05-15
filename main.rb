# encoding UTF-8

# ------------REQUIRE MODULES------------- #

require 'twitter'
require 'pp'
require 'date'

# ------------------DEFINE VALUES----------------- #

ck = 'IQKbtAYlXLripLGPWd0HUA'
cs = 'GgDYlkSvaPxGxC4X8liwpUoqKwwr3lCADbz8A7ADU'
at = '1430072682-z3UFhzbooflvlw5ICsjtm7eJQIXWFUDlIPcHyZK'
ats = 'Zi2J9zAmVPuidk1B07PbS3r2AiCUJ0qh9ZYHNeaago4'

# -------------AUTH TWITTER------------- #

$host = Twitter::Client.new(
  :consumer_key		=> ck,
	:consumer_secret	=> cs,
	:oauth_token		=> at,
	:oauth_token_secret	=> ats
)

# -------------------WEEK-------------------- #

# today.wday <- week   0:sun ... 6:sat
today = Date.wday


# -------------CHECK TODAYS WEEK AND TWEET------------- #

# if today is ***day, i tweet this status.
if today = 0 then
	$host.update("月曜日の時間割は「英語理解」「情報A」「数学Ⅱ」「体育（武道ダンス）」「生物基礎」「現代文」です。")
elsif today = 1 then
	$host.update("火曜日の時間割は「古典」「PEⅡ」「生物基礎」「数学B」「英語理解」「世界史・日本史B選択」「LHR」です。")
elsif today = 2 then
	$host.update("水曜日の時間割は「現代文」「英語理解」「体育（球技選択）」「数学Ⅱ」「情報A」「世界史・日本史・地理A選択」です。")
elsif today = 3 then
	$host.update("木曜日の時間割は「保険」「古典」「数学B」「世界史・日本史・地理A選択」「世界史・日本史B選択」「GEⅠ」です。")
elsif today = 4 then
	$host.update("金曜日の時間割は「古典」「世界史・日本史B選択」「数学Ⅱ」「GEⅠ」「英語理解」「PEⅡ」です。")
end


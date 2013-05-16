# coding:UTF-8

require 'tweetstream'
require './main.rb'

TweetStream.configure do |config|
  config.consumer_key		= ''
	config.consumer_secret		= ''
	config.oauth_token		= ''
	config.oauth_token_secret	= ''
	config.auth_method		= :oauth
end

client = TweetStream::Client.new

client.on_timeline_status do |status|

tweet = status.

if status == /"翌日の時間割"/ then
$host.update("@#{event[:source][:screen_name]} #{main}")
end

client.userstream do |status|
puts status.user.screen_name
puts status.text
end

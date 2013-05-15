# -*- encoding: utf-8 -*-

require 'clockwork'
require './main.rb'


include Clockwork

handler do |job|
  main()
end

every(1.day, 'frequent.job', :at => '22:00')


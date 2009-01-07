require 'yaml'
require 'num_helper'
require 'nil_helper'
require 'hash_to_weighted_arr'
hash = File.open( 'tasks.yml' ) { |yf| YAML::load( yf ) }

while true
  @statime = Time.now
  puts "--------------------"
  key = random_from_weighted_hash(hash)
  print "You started #{key} at"
  puts @statime.strftime(" %I:%M %p")

  time = (hash[key]['time']).pull_time 
  puts (@statime+time).strftime("Move on to something new at %I:%M %p")
  puts "--------------------"
  sleep(time)
end

require 'numtime'
require 'yaml'
require 'nil_helper'
hash = File.open( 'tasks.yml' ) { |yf| YAML::load( yf ) }

def die_roll(hash)
  arr = hash.collect { |x, y| if y and y['weight'] then 
    a = []
    y['weight'].times do 
      a.push(x)  
    end
    a 
  else 
    x 
  end
}
arr.flatten!
  return arr[rand(arr.size)]
end
while true
  @statime = Time.now
  puts "--------------------"
  key = die_roll(hash)
  print "You started #{key} at"
  puts @statime.strftime(" %I:%M %p")

  time = (hash[key]['time']).pull_time 
  puts hash
  puts key 
  puts hash[key]
  puts hash[key]['time']
  puts time
  puts (@statime+time).strftime("Move on to something new at %I:%M %p")
  puts "--------------------"
  sleep(1)
end

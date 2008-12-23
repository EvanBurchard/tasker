require 'timer'
require 'yaml'
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
puts arr

  return arr[rand(arr.size)]
end

while true
  puts "--------------------"
  key = die_roll(hash)
  print "You started #{key} at"
  puts @statime.strftime(" %I:%M %p")

  if hash[key] and hash[key]['time'] then
    time = hash[key]['time'].to_i.hours  
  else
    time = 1.hour
  end
  puts (@statime+time).strftime("Move on to something new at %I:%M %p")
  puts "--------------------"
  sleep(@statime+time)
end

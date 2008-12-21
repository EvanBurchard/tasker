require 'timer'
arr =["task1", "task2", "task3"]
def die_roll(arr)
  return arr[rand(arr.size)]
end

while true
  puts "--------------------"
  print "You started #{die_roll(arr)} at"
  puts @statime.strftime(" %I:%M %p")
  puts (@statime+1.hour).strftime("Move on to something new at %I:%M %p")
  puts "--------------------"
  sleep(1.hour)
end


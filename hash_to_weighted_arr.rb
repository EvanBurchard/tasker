def random_from_weighted_hash(hash)
  arr = hash.collect { |x, y| 
     a = []
      y['weight'].times do 
        a.push(x)  
      end
      a 
  } 
  arr.flatten!
  return arr[rand(arr.size)]
end



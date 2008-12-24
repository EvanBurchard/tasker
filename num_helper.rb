class Fixnum
def minute
  self * 60
end
def minutes
  self * 60
end
def hour
  self * 60 * 60
end
def hours
  self * 60 * 60
end

def pull_time
   self.to_i.hours
end

end



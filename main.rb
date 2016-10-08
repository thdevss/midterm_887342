#=================================================================
# func
def chkAEIOU(char)
        char = char.downcase
        if char=="a" || char=="e" || char=="i" || char=="o" || char=="u" 
                return true
        end 

        return false
end
def chkMSN(char)
        char = char.downcase
        if char=="m" || char=="n" || char=="s" 
                return true
        end 

        return false
end

def chkDupTwoChar(char1,char2)
        char1 = char1.downcase
        char2 = char2.downcase
        if char1[1]==char2[1] && char1[0]==char2[0]
                return true
        end 

        return false
end

#=================================================================
# one
print "Please enter the number..."
number = gets.chomp
number.capitalize!
if number.to_i < 1
  puts "Error"
end

array = Array.new(number.to_i){ |i| (i+1).to_i }
cube = Proc.new { |x| x ** 3 }
puts array.map(&cube)
puts "********************"
#=================================================================
# two
def prime_fib(n)
  hash = Hash.new(0)
  j = 0
  i = 1

    loop do
      j += 1
      next unless prime?(j)
      hash["f#{i}"] = j
      i += 1
      break if i == n+1
    end
  return hash
end

def prime?(n)
  for i in 2..n-1
      if n % i == 0
          return false
      end
    end
    return true
end

prime_fib(5).each { |k, v| 
  puts "#{k} -> #{v}"
}
puts "********************"

#=================================================================
# three

def build_tuple_array(n)
  arr = Array[] 
  (0..n.to_i-1).each do |i|
    (0..n.to_i-1).each do |j|
      arr.push([i,j])
      end
  end
  return arr
end

build_tuple_array(5).each do |x|
    print "#{x}, "
end
puts ""
puts "********************"


#=================================================================
#four
moreEightChar = Array[]
    US_states.each { |k| 
        if k.length > 8
                moreEightChar.push(k)
        end  
    }                

puts moreEightChar
puts "********************"

#=================================================================
# five
US_states.each { |k| 
        if chkMSN(k[0]) && chkAEIOU(k[-1,1])
                puts k
        end  
}                
puts "********************"

#=================================================================
# six
cube = Proc.new { |x| x.reverse }
US_states.map(&cube).sort_by {|name| name }.each { |k| puts k.reverse }
puts "********************"

#=================================================================
# seven
USHash = Hash.new(0)
USHash = abbr_states.to_h
puts USHash
puts "********************"

#=================================================================
# eight
USHash.each { |k,v| 
        if chkDupTwoChar(k, v)
                puts k
        end  
}      
puts "********************"



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dic)  
    str.downcase!
    dic.reduce(Hash.new(0)) do |hash, word|
        if str.scan(/(?=#{word})/).count > 0
            hash[word] += str.scan(/(?=#{word})/).count
        end
        hash
    end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
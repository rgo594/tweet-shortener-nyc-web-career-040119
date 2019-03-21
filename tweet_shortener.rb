def dictionary 
  dict = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4", 
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end 


def word_substituter(tweet)
  dict = dictionary
  words = tweet.split(" ")

  words.collect do |word|
    dictionary.collect do |key, value|
      if word == key 
        word.replace(value)
      end 
    end
  end 
  words.join(" ")
end 


def bulk_tweet_shortener(tweets_array)

  tweets_array.collect do |tweet|
    puts word_substituter(tweet)
  end
end 


def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140  
    word_substituter(tweet)
  else 
    tweet 
  end 
end 



def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 
















# selective_tweet_shortener("i am too coolNow the client has come back to you. They love the program, but they noticed that even tweets that are under 140 characters are being shortened. Now they want you to only shorten the tweet if it's too long.")


# def word_substituter(tweet)
#   dict = dictionary
#   words = tweet.split(" ")

#   words.collect do |word|
#     dictionary.collect do |key, value|
#       if word == key 
#         word.replace(value)
#       end 
#     end
#   end 
#   words.join(" ")
# end 

# word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")


# bulk_tweet_shortener(["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."])
















# holiday_hash = {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
# def all_holidays_with_bbq(holiday_hash)
#   with_BBQ = []
#   holiday_hash.collect do |season, holidays|
#     holidays.collect do |holiday, supplies|
#       supplies.collect do |supply|
#         if supply == "BBQ"
#           with_BBQ.push(holiday)
#         end 
#       end 
#     end 
#   end 
#   with_BBQ
# end 

# all_holidays_with_bbq(holiday_hash)
# #=> [:fourth_of_july, :memorial_day]













# def all_supplies_in_holidays(holiday_hash)
  
#     holiday_hash.collect do |season, holidays|
#       puts "#{season.capitalize}:"
#       holidays.collect do |holiday, supplies|
#         puts "  #{holiday.to_s.split("_").collect {|day|
#           day.capitalize}.join(" ")}: #{supplies.join(", ")}"
            
#           end 
#         end 
#       end  
  
  
  
  # def all_supplies_in_holidays(holiday_hash)
  
  #   holiday_hash.values. collect do |holidayhash|
  #     holidayhash.keys.collect do |holiday|
  #       holiday.to_s.split.collect do |word|
          
  #         word.split("_").collect do |halfword|
  #           halfword.capitalize
            
           
  #         end 
  #       end
  #   end 
  # end 
  # end 
  
  
  
  # holiday_hash.collect do |season, holidays|
  #   puts "#{season.capitalize}:"
  #     holidays.collect do |holiday, supplies|
  #       puts "#{holiday}"
      
  #         supplies.collect do |supply|
  #           puts "#{supply}"
  #       end 
  #     end 
  #   end 


# all_supplies_in_holidays(holiday_hash)
 


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.






# def add_supply_to_memorial_day(holiday_hash, supply)
#   # {
#   #   :winter => {
#   #     :christmas => ["Lights", "Wreath"],
#   #     :new_years => ["Party Hats"]
#   #   },
#   #   :summer => {
#   #     :fourth_of_july => ["Fireworks", "BBQ"]
#   #   },
#   #   :fall => {
#   #     :thanksgiving => ["Turkey"]
#   #   },
#   #   :spring => {
#   #     :memorial_day => ["BBQ"]
#   #   }
#   # }

# holiday_hash.collect do |season, holidays|
#   if season == "spring" 
#     holidays.collect do |holiday, sup|
#       if holiday == :memorial_day
#         sup.push(supply)
#       end
#     end
#   end
# end
# end 



# def second_challenge
#   groceries = {
#   dairy: ["milk", "yogurt", "cheese"],
#   vegetable: ["carrots", "broccoli", "cucumbers"],
#   meat: ["chicken", "steak", "salmon"],
#   grains: ["rice", "pasta"]
#   }

#   groceries.values.flatten 
  

# end




# def first_challenge
#   contacts = {
#     "Jon Snow" => {
#       name: "Jon",
#       email: "jon_snow@thewall.we", 
#       favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
#       knows: nil
#     },
#     "Freddy Mercury" => {
#       name: "Freddy",
#       email: "freddy@mercury.com",
#       favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
#     }
#   }

#   contacts.each do |person, data|
#     if person == "Freddy Mercury"
#       data.each do |attribute, value|
#         if attribute == :favorite_icecream_flavors
#           value.delete_if do |flave|
#             flave == "strawberry"
#           end
#         end 
#       end 
#     end 
#   end 
#     contacts 
  
# end

# first_challenge
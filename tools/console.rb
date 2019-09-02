require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Startup.new("BeeBee", "Bee", "bee.com")
s2 = Startup.new("Bebe", "Bob", "bebe.com")

vc1 = VentureCapitalist.new("Bee", 1200000000)
vc2 = VentureCapitalist.new("Bob", 999999)

f1 = FundingRound.new(s1, vc1, "angel", 1000)
f2 = FundingRound.new(s2, vc2, "angel", 50000)




#Startup.sign_contract(vc, type, investment)
#Startup.funding_rounds
#startup.num_funding_rounds
#Startup.total_funds
#Startup.investors
#Startup.big_investors


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
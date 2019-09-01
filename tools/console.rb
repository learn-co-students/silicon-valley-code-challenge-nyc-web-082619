require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

start_up1 = Startup.new("EufyCam", "Benjamin Shea", "eufycam.com", "successfull")
start_up2 = Startup.new("TrackerHero", "Konner Klein", "trackerhero.com", "fail")
start_up3 = Startup.new("N.thing", "Abbie Horne", "n-thing.co.il", "fail")
start_up4 = Startup.new("HappyEMI", "Lacey Leigh", "happyemi.io", "successfull")
start_up5 = Startup.new("CloudWays", "Justin Walker", "cloudways", "successfull")



capitalist1 = VentureCapitalist.new("Lori Greiner", 1000000000 )
capitalist2 = VentureCapitalist.new("Barbara Corcoran", 80000000 )
capitalist3 = VentureCapitalist.new("Bethenny Frankel", 1200000000)
capitalist4 = VentureCapitalist.new("Sara Blakely", 101000000)


round1 = FundingRound.new(start_up1, capitalist2, "Seed", 5000)
round2 = FundingRound.new(start_up4, capitalist1, "Pre-Seed", 500430)
round3 = FundingRound.new(start_up2, capitalist3, "Series-A", 500760)
round4 = FundingRound.new(start_up2, capitalist4, "Series -B", 509800)
round5 = FundingRound.new(start_up5, capitalist1, "Series-C", 500000)
round6 = FundingRound.new(start_up3, capitalist2, "Pre-Seed", 504300)
round7 = FundingRound.new(start_up3, capitalist3, "seed", 500760)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
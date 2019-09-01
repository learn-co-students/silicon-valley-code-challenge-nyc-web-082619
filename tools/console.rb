require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tibTech = Startup.new("TibTech", "KKarma", "https://www.tibtech.com")
codeYoung = Startup.new("Code Young", "KevinKarma", "https://www.codeyoung.edu")
streetPark = Startup.new("street Park", "Tenzin Ngawang", "https://www.streetpark.com")


billGates = VentureCapitalist.new("Bill Gates", 106300000000)
markZuckerberg = VentureCapitalist.new("Mark Zuckerberg", 67500000000)
elonMusk = VentureCapitalist.new("Elon Musk", 19200000000)


###############Check Startup's Associations and Aggregate Methods #########################

# billFunding = tibTech.sign_contract(billGates,"Angle",20000)
# markFunding = tibTech.sign_contract(markZuckerberg,"Series A",50000)
# billFunding = tibTech.sign_contract(billGates,"Series B",10000)

# isBillFundingAdded = FundingRound.all.include?(billFunding) #should return true

# tibTechNumberOfRound = tibTech.num_funding_rounds #should return 3

# tibTechTotalInvestment = tibTech.total_funds #should return 80000.0 as float 

# tibTechInvestors = tibTech.investors #should array of billGates object, markzuckerberge object (no Doublicates)

# tibTechBigInvestor = tibTech.big_investors #should return billGates and MarkZuckerBerge object

###########--------End of Checking Startup's Associations and Aggregate Methods----############

##############Check VentureCaptalist's Associations and Aggregate Methods ####################

billFunding = billGates.offer_contract(codeYoung,"Angle",24000)
markFunding = markZuckerberg.offer_contract(codeYoung,"Series A", 30000)
billFunding = billGates.offer_contract(codeYoung,"Series B", 10000)

billGatesFundingRound = billGates.funding_rounds 
#shoulde return objects of FundingRound by Bill Gates

billGatesPortfolio = billGates.portfolio 
#return array of unique startup by Bill Gates

billGatesBiggestInvestment = billGates.biggest_investment 
#should return codeYoung fundingRound as its biggest

billGatesInvested = billGates.invested("https://www.codeyoung.edu") 
#should return 24000+10000 = 34000 as total investment 

##########--------End of Checking VentureCapitalist's Associations and Aggregate Methods---###



#def initialize(startup,venture_capitalist,type,investment)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
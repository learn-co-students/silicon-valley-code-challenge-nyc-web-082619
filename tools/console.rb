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


#roundOne = FundingRound.new(tibTech,billGates,"Angle",50000)

tibTech.sign_contract(billGates,"Angle",20000)




#def initialize(startup,venture_capitalist,type,investment)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
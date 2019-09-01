class VentureCapitalist
  
  attr_reader :name, :total_worth
  
  def initialize(name,total_worth)
    @name = name
    @total_worth = total_worth
  end
  
  def offer_contract(startup,type,investment)
    FundingRound.new(startup,self,type,investment)
  end
  
  def funding_rounds
    FundingRound.all.select { |fundRound| fundRound.venture_capitalist == self } 
    # returns array of Funding Round by this Venture Capitalist 
  end
  
  def portfolio
    allStartup = self.funding_rounds.map { |fundRound| fundRound.startup } #returns array of startup funded by this venture (Unique)
    allStartup.uniq 
  end
  
  def biggest_investment
    allFund = self.funding_rounds.map { |fundRound| fundRound.investment } # return array of investment. [100, 4343340, 20394]
    allFund.max 
  end
  
  def invested(domainString)
    totalInvest = 0
    domain = FundingRound.all.select { |fundRound| fundRound.startup.domain == domainString} 
    domainInvestment = domain.map { |domain| domain.investment } 
    domainInvestment.each { |investment| totalInvest += investment }
    totalInvest
  end
  
  def self.all 
    FundingRound.all.map { |fundRound| fundRound.venture_capitalist }
  end
  
  def self.tres_commas_club
    self.all.select { |vCapitalist| vCapitalist.total_worth > 1000000000 }
  end
  
end #end of class 

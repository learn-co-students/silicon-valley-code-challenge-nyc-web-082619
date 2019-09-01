class Startup
  
  attr_reader :founder, :name, :domain

  def initialize(name,founder,domain)
    @name = name 
    @founder = founder
    @domain = domain
  end
  
  def pivot(domain, name)
    @domain = domain
    @name = name
  end
  
  def sign_contract(ventureCapitalist, type,investment)
    FundingRound.new(self,ventureCapitalist,type,investment)
  end
  
  def num_funding_rounds
    allFundRound = FundingRound.all.map { |fundRound| fundRound.startup == self }
    allFundRound.count
  end
  
  def total_funds
    totalFund = 0
    allFundRound = FundingRound.all.select { |fundRound| fundRound.startup == self } #returns all the FundingRound for this Startup
    allInvestment = allFundRound.map { |fund| fund.investment } # return array of all the investment for this startup 
    allInvestment.each { |investment| totalFund += investment } # Add al lthe investment and return in next line 
    totalFund
  end
  
  def investors
    allFundRound = FundingRound.all.select { |fundRound| fundRound.startup == self } #returns all the FundingRound for this Startup
    allVenture = allFundRound.map { |fund| fund.venture_capitalist } 
    allVenture.uniq
  end
  
  def big_investors
    self.investors.select { |investor| investor.total_worth > 1000000000 } 
  end
  
  def self.all 
    FundingRound.all.map { |fundRound| fundRound.startup}
  end
  
  def self.find_by_founder(founderName)
    self.all.find { |startup| startup.founder == founderName }
  end
  
  def self.domains
    domains = self.all.map { |startup| startup.domain }
    domains.uniq 
  end

end#end of class 

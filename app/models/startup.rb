class Startup

    attr_accessor :name, :founder, :domain, :pivot

    @@all = []

    def initialize(name, founder, domain, pivot)
        @name = name 
        @founder = founder
        @domain = domain
        @pivot = pivot
        @@all << self 
    end 

    def name
        @name
    end 

    def self.all
        @@all
    end 

    def self.find_by_founder(name)
        self.all.find {|startup| startup.founder == name}
    end 

    def self.domains
        self.all.map {|startup| startup.domain}
    end 

    def sign_contract(venture_capitalist, invesment_type, amount)
        FundingRound.new(self, venture_capitalist, invesment_type, amount)
    end 

    def tres_commas_club
        VentureCapitalist.all.select {|venture_catitalist| venture_catitalist.total_worth >= 1000000000}
    end 

    def num_funding_rounds
       how_many_funds = FundingRound.all.select {|fundinground| fundinground.startup == self} 
       how_many_funds.count
    end 

    def total_funds
        #Returns the total sum of investments that the startup has gotten
        sum = 0
        FundingRound.all {|fundinground| fundinground.startup += sum} 
    end 

    # def investors
    #     #Returns a unique array of all the venture capitalists that have invested in this company
    #     a.max { |a, b| a.length <=> b.length }
    #     FundingRound.all.select.uniq {|fundinground_a, fundinground_b| fundinground_a.amount <=> fundinground_b.amount}
    # end
end

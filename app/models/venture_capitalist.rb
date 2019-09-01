class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name 
        @total_worth = total_worth
        @@all << self
    end 

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|venture_catitalist| venture_catitalist.total_worth >= 1000000000}
    end

    def offer_contract(startup, invesment_type, amount)
        FundingRound.new(startup, self, invesment_type, amount)
    end

    def num_funding_rounds
        how_many_funds = FundingRound.all.select {|fundinground| fundinground.venture_capitalist== self} 
        how_many_funds.count
     end

    #  def biggest_investment
    #    FundingRound.all.select {|fundinground| fundinground.amount}
    # end

end

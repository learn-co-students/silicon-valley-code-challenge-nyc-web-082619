class FundingRound

    attr_accessor :startup, :venture_capitalist, :invesment_type, :amount

    @@all = []

    def initialize(startup, venture_capitalist, invesment_type, amount)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @invesment_type = invesment_type 
        @amount = amount
        @@all << self
    end 

    def self.all
        @@all
    end 

end

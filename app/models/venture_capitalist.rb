class VentureCapitalist
   
        attr_accessor :name, :total_worth
        
    
        @@all = []
    
        def initialize(name, total_worth)
            @name = name
            @total_worth = total_worth
            @@all<<self
            
        end
        
        def self.all
            @@all
        end
    
        def tres_commas_club
            all.select{|vc| vc.total_worth > 1000000}
        end

        def offer_contracts(startup, type, ivestment)
            FundingRound.new(startup, self, type, investment)
        end

        def funding_rounds
            FundingRound.all.select{|fr| fr.venture_capitalist == self}
        end

        def portfolio
            funding_rounds.map{|fr| fr.startup}.uniq
        end

        def biggest_investment
            funding_rounds.max_by{|fr| fr.investment}
        end

        def invested(domain)
            rounds_by_domain = funding_rounds.select{|fr|fr.startup.domain==domain}
            rounds_by_domain.sum
        end
    
    
    
    
    
    

    
end

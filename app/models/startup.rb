class Startup
    attr_accessor :name
    attr_reader :founder, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @name = name
        @domain = domain
    end

    
    def self.all
        @@all
    end

    def self.domains
        all.select{|startup| startup.domain}
      end


    def self.find_by_founder(founder)
        @@all.find{|startup| startup.founder == founder}
          end

          def sign_contract(vc, type, investment)
            FundingRound.new(self, vc, type, investment)
          end

          def funding_rounds
            FundingRound.all.select{|fr.startup == self}
          end

          def num_funding_rounds
            funding_rounds.count
          end

          def total_funds
            funding_rounds.sum
          end

          def investors
            funding_rounds.map{|fr| fr.venture_capitalist}.uniq
          end

          def big_investors
            investors.select{|vc| VentureCapitalist.tres_commas_club.include?(vc)}
          end






    end

    








end

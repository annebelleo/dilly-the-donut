class Donut
    attr_accessor :name, :health, :defense
    def initialize(donut_name)
        @name=donut_name
        @health=100
        @defense=Random.rand(0..100)
    end
    
    def battle(foe)
        if foe.offense > self.defense
            "This donut is toast."
        elsif foe.offense < self.defense
            "This donut is victorious."
        else
            "BEGIN VEGETABLE OFF"
        end
    end
end

class Foe
    attr_accessor :name, :offense, :type
    def initialize(foe_name, foe_type)
        @name = foe_name
        @offense=Random.rand(0..100)
        @type = foe_type
    end
end

dilly=Donut.new("Dilly")
dilly.name = "Dilly the Donut"
chelsea=Foe.new("Chelsea the Croissant", "Croissant")
puts dilly.battle(chelsea)
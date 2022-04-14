class Item
    attr_accessor :name, :cost
    def initialize(name, cost)
        @name = name
        @cost = cost
    end
    def print_item
        puts "#{@name}: costs #{@cost} coins"
    end
 
end 
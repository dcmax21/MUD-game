class Items
    def initialize(name, level, rarity)
        @name = name
        @level = level
        @rarity = rarity
        @persentage = persentage
    end

    def item_maker
        puts "#{@name} #{@level} #{@rarity}"
    end

end
item = []

puts item
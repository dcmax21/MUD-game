
            
        class Goblin
            attr_accessor :hp, :lvl, :damage
            def initialize(hp, lvl, damage)
                @hp = hp
                @lvl = lvl
                @damage = damage
                @loot_drop = rand(1..10)
            end
            def lootdropadd
               @loot_drop
            end

        end

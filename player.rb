class Player
    attr_accessor :hp, :lvl, :damage, :coins, :player_inv   
    def initialize(hp, lvl, damage)
        @hp = hp
        @lvl = lvl
        @damage = damage
        @coins ||= 30
        @player_inv = []
    end
    def add_item_to_player(obj)
        @player_inv << obj
    end
end
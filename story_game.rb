
require 'ruby2d'

require "./goblin.rb"
require "./player.rb"
require "./item.rb"

# class Inventory
#     attr_accessor :items    
#     def initialize
#         @items = []
#     end

#     def add_item(obj)
#         @items << obj
#     end

#     def print_items
#         @items.each do |item|
#             puts item.name
#         end
#     end
# end

# class Person
#     def initialize(name)
#         @name = "blacksmith"
#         @inventory = Inventory.new 
#     end

# end


# class Item
#     attr_accesor :name, :cost
#     def initialize(name, cost)
#        @name = name
#        @cost = cost
#     end

#     def can_afford?(coins)
#         coins >= @cost
#     end
# end

# inventory = Inventory.new
# sword = Item.new("Bronze sword", 30)

# inventory.add_item(sword)

# inventory.print_items

# class Player
#    attr_accessor :type, :coins

#    def coins
#      @coins ||= 30
#    end

#    def intro
#      puts "This is my default intro"
#    end
# end

# class Archer < Player


# end


# class Knight < Player

#     def intro
#         puts "This is my knight intro"
#     end
# end



# player = Archer.new
# puts player.coins

# puts player.intro

# player = Knight.new
# puts player.coins

# puts player.intro
# player_type = gets.chomp

# player = Player.new(player_type)
# puts player.type

require 'ruby2d'
player = Player.new(40, 0, 6)


puts "Hello there traveler."
puts "Would you like to be a Knight of the west,"
puts "Or a archer of the east,"
puts "Or be a hunter of the north."
answer = gets.chomp
answer_knight = "knight"
answer_archer = "archer"
answer_hunter = "hunter"

if answer == answer_knight
    puts "okay fellow traveler"
    puts "what shall your name be?"
    answer_name = gets.chomp
    puts "Okay #{answer_name}"
end
if answer == answer_archer
    puts "okay fellow traveler"
    puts "what shall your name be?"
    answer_name = gets.chomp
    puts "Okay #{answer_name}"
    sleep(3)
    puts "you start your journey as a bow man in a archers guild"
    sleep(3)
    puts "you want to become a archer so you can protect your people of your castle"
    sleep(3)
    puts "what shall your bow and arrow be?"
    sleep(3)
    puts "so, you have 2 options"
    puts "you can have a crossbow or a long bow"
    answer_bows = gets.chomp

    # Consider looking into case statements
    #case answer_bows

    #when "cross bow"
        # 
    #when "long bow"
        # long bow. 
    #else
       # This is what happens if they choose neither. 
    # end

        
        goblin = Goblin.new(20, 1, 4)
        black_smith_inventory = []
        black_smith_inventory << Item.new("leather armor", 30)
        black_smith_inventory <<  Item.new("chain mail armor", 60)
        black_smith_inventory <<  Item.new("iron armor", 90)
        black_smith_inventory <<  Item.new("golden armor", 110)
        black_smith_inventory <<  Item.new("diamond armor", 140)
  


        
    answer_crossbow = "crossbow"
    answer_longbow = "long bow"
    if answer_bows == answer_crossbow
        player.add_item_to_player("Crossbow")
        puts "you have chosen the crossbow"
        sleep(2)
        puts "now finaly you have to pick up your armor"
        sleep(2)
        puts "you go to your castle's black smith"
        sleep(2)
        puts "you have #{player.coins} coins"
        puts "the black smith tells you :hello traveler what would you like to buy?:"
        black_smith_inventory.each do |item|
            item.print_item
            sleep(2)
        end
        
        valid_response = false  
        until valid_response do
            answer_black_smith = gets.chomp
            match = black_smith_inventory.find do |item|
                answer_black_smith == item.name
            end
            if match
                if match.cost <= player.coins
                    valid_response = true
                    player.coins -= match.cost
                    puts ":sold: the black smith said"
                    puts "you have #{player.coins} coins"
                    player.add_item_to_player("#{match.name}")
                else
                    puts "you dont have enough coins to buy this item you pesant"
                end
            else
                puts "I dont have that item"
            end

        end 
           
        sleep(2)
        puts "Now you you go to the archers guild to start your quest to become the best archer in the world"
        sleep(2)
        puts "you start your quest adventure walking in a field until you here noises in the bushes"
        sleep(2)
        puts "a goblin jumps out of the bushes and attacks you"
        sleep(2)

    def prompt(player, msg, opts={})
        valid_option = false
        target_option = "i", "n", "y"
        # Keep re-asking question until valid response.
        until valid_option do 
            # Print the question
            puts msg

            # Default options
            default_options =  {
                "i": "View inventory"
            } 
            # Merge the default options into the opts specified. 
            opts = opts.merge(default_options) 
            opts.each do |key, value|
                puts "#{key}: #{value}"
            end

            print "Your choice: "
            selected = gets.chomp.strip.to_sym
            puts "Selected: #{selected}. Keys: #{opts.keys}"
            if opts.keys.include?(selected)
                valid_option = true
                puts "You chose: #{opts[selected]}"
                target_option = selected
            else 
                puts "That is not an option!"
            end

            case target_option
            when :i
                puts "#{puts player.player_inv}"
                
            end
    
            
        end

    end
    

    prompt(player, "Would you like to attack the Goblin?", {
        "y": "Yes",
        "n": "No",
    })
        answer_goblin_attack1 = gets.chomp
            answer_gob = false
        case answer_goblin_attack1
        when "y"
                puts "its risky but okay"
                answer_gob = true
        when "n"
                puts "you have ran away"
                answer_gob = false
        else
                raise 'the game broke'
        end  
        if answer_gob
                        goblin = Goblin.new(20, 1, 4)

            puts "You attack first"
            until goblin.hp <= 0|| player.hp <= 0
          
                puts "You dealt #{player.damage} damage"
                sleep(2)
                puts "the goblin has #{goblin.hp}"
                sleep(2)
                puts "The goblin dealt #{goblin.damage} damage to you"
                sleep(2)
                puts "you have #{player.hp}"
                goblin.hp -= player.damage
                player.hp -= goblin.damage
            end
            if player.hp <= 0
                puts "You have died"
            else
                puts "The goblin is defeated"
                puts "The goblin droped #{goblin.lootdropadd} coins"
                player.coins = goblin.lootdropadd
                puts "you now have #{player.coins} coins"
            end
        end
        

    end
end


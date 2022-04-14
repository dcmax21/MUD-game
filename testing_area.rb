coins = 0
class Tests
    def initialize
        @loot_drop = rand 1..10
    end
    def lootdropadd(obj)
        @loot_drop << obj
    end

end
test = Tests.new
coins = test.lootdropadd(coins)
puts coins

def prompt(msg, opts={})
    valid_option = false
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
        else 
            puts "That is not an option!"
        end
    end
end

test.prompt("Would you like to attack the Goblin?", {
    "y": "Yes",
    "n": "No",
})





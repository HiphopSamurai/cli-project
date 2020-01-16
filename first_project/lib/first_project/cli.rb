class FirstProject::CLI

    def call
        list_races
        menu
        goodbye
    end

    def list_races
        puts "Welcome to Warcraft 3 unit information."
        @races = FirstProject::Races.units
    end

    def menu
        input = nil
        while input != "exit"
        puts "Please enter the number of the race you want to learn more about, type list to see the list of races or type exit."
            input = gets.strip.downcase
            case input
            when "list"
                list_races
            when "1"
                FirstProject::Humans.call
            when "2"
                FirstProject::Orcs.call
            when "3"
                FirstProject::Undeads.call
            when "4"
                FirstProject::Nightelfs.call
            end
        end
    end

    def goodbye
        puts "Goodbye!  gl hf!"
    end

end
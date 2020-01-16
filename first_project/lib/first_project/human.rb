class FirstProject::Humans

    def self.call
        puts "The noble warriors of humanity employ both a strong military and powerful magics in the defense of 
        their shining kingdoms. Both knights and wizards fight side by side on the field of battle against those who 
        would threaten the sanctity and peace of the Alliance. Although the Alliance has all but fallen apart, the 
        valiant citizens of Azeroth and Lordaeron have once again taken up arms against the enemies of humanity.".gsub /^\s*/, ''

        self.scrape_human
    end

    def self.scrape_human
        doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/"))
        puts ""
        puts "Human heros are: "
        puts "1. " + paladin = doc.css(".tiny")[10].text
        puts "2. " + archmage = doc.css(".tiny")[11].text
        puts "3. " + mountainKing = doc.css(".tiny")[12].text
        puts "4. " + bloodMage = doc.css(".tiny")[13].text
    
        puts ""
        puts "Human units are: "
        puts "5. " + peasant = doc.css(".tiny")[14].text
        puts "6. " + militia = doc.css(".tiny")[15].text
        puts "7. " + footman = doc.css(".tiny")[16].text
        puts "8. " + rifleman = doc.css(".tiny")[17].text
        puts "9. " + knight = doc.css(".tiny")[18].text
        puts "10. " + priest = doc.css(".tiny")[19].text
        puts "11. " + sorceress = doc.css(".tiny")[20].text
        puts "12. " + spellBreaker = doc.css(".tiny")[21].text
        puts "13. " + flyingMachine = doc.css(".tiny")[22].text
        puts "14. " + mortarTeam = doc.css(".tiny")[23].text
        puts "15. " + siegeEngine = doc.css(".tiny")[24].text
        puts "16. " + gryphonRider = doc.css(".tiny")[25].text
        puts "17. " + dragonhawkRider = doc.css(".tiny")[26].text
        puts "18. " + waterElemental = doc.css(".tiny")[27].text
        puts "19. " + phoenix = doc.css(".tiny")[28].text 
        puts ""

        self.select_human_unit
        
    end

    def self.select_human_unit
        
        input = nil

        puts "Please select a unit you want to learn more about."
        input = gets.strip.downcase
        case input
        when "1"                
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/paladin.shtml"))
            puts desription = doc.css("span")[1].text
        when "2"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/archmage.shtml"))
            puts desription = doc.css("span")[1].text
        when "3"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/mountainking.shtml"))
            puts desription = doc.css("span")[1].text
        when "4"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/bloodmage.shtml"))
            puts desription = doc.css("span")[1].text
        when "5"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/peasant.shtml"))
            puts desription = doc.css("span")[1].text
        when "6"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/militia.shtml"))
            puts desription = doc.css("span")[1].text
        when "7"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/footman.shtml"))
            puts desription = doc.css("span")[1].text
        when "8"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/rifleman.shtml"))
            puts desription = doc.css("span")[1].text
        when "9"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/knight.shtml"))
            puts desription = doc.css("span")[1].text
        when "10"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/priest.shtml"))
            puts desription = doc.css("span")[1].text
        when "11"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/sorceress.shtml"))
            puts desription = doc.css("span")[1].text
        when "12"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/spellbreaker.shtml"))
            puts desription = doc.css("span")[1].text
        when "13"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/flyingmachine.shtml"))
            puts desription = doc.css("span")[1].text
        when "14"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/mortarteam.shtml"))
            puts desription = doc.css("span")[1].text
        when "15"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/siegeengine.shtml"))
            puts desription = doc.css("span")[1].text
        when "16"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/gryphonrider.shtml"))
            puts desription = doc.css("span")[1].text
        when "17"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/dragonhawkrider.shtml"))
            puts desription = doc.css("span")[1].text
        when "18"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/waterelemental.shtml"))
            puts desription = doc.css("span")[1].text
        when "19"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/human/units/phoenix.shtml"))
            puts desription = doc.css("span")[1].text
        end     
    end

end
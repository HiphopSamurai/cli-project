class FirstProject::Undeads

    def self.call
        puts "The horrifying Undead army, called the Scourge, consists of thousands of walking corpses, disembodied 
        spirits, damned mortal men and insidious extra-dimensional entities. The Scourge was created by the Burning 
        Legion for the sole purpose of sowing terror across the world in anticipation of the Legion's inevitable invasion. 
        The Undead are ruled by Ner'zhul, the Lich King, who lords over the icy realm of Northrend from his frozen throne. 
        Ner'zhul commands the terrible plague of undeath, which he sends ever southward into the human lands. 
        As the plague encroaches on the southlands, more and more humans fall prey to Ner'zhul's mental control and 
        life-draining sickness every day. In this way, Ner'zhul has swelled the ranks of the already considerable Scourge. 
        The Undead employ necromantic magics and the elemental powers of the cold north against their enemies.".gsub /^\s*/, ''
        
        self.scrape_undead
    end

    def self.scrape_undead
        doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/"))
        puts ""
        puts "Undead heros are: "
        #binding.pry
        puts "1. " + deathKnight = doc.css(".tiny")[10].text
        puts "2. " + dreadLord = doc.css(".tiny")[11].text
        puts "3. " + lich = doc.css(".tiny")[12].text
        puts "4. " + cryptLord = doc.css(".tiny")[13].text
        
    
        puts ""
        puts "Undead units are: "
        puts "5. " + acolyte = doc.css(".tiny")[14].text
        puts "6. " + ghoul = doc.css(".tiny")[15].text
        puts "7. " + cryptFiend = doc.css(".tiny")[16].text
        puts "8. " + gargoyle = doc.css(".tiny")[17].text
        puts "9. " + abomination = doc.css(".tiny")[18].text
        puts "10. " + meatWagon = doc.css(".tiny")[19].text
        puts "11. " + obsidianStatue = doc.css(".tiny")[20].text
        puts "12. " + destroyer = doc.css(".tiny")[21].text
        puts "13. " + necromancer = doc.css(".tiny")[22].text
        puts "14. " + banshee = doc.css(".tiny")[23].text
        puts "15. " + shade = doc.css(".tiny")[24].text
        puts "16. " + frostWyrm = doc.css(".tiny")[25].text
        puts "17. " + infernal = doc.css(".tiny")[26].text
        puts "18. " + skeletonWarrior = doc.css(".tiny")[27].text
        puts "19. " + skeletalMage = doc.css(".tiny")[28].text
        puts "20. " + carrionBeetle = doc.css(".tiny")[29].text
        puts ""

        self.select_undead_unit

    end

    def self.select_undead_unit
        
        input = nil

        puts "Please select a unit you want to learn more about."
        input = gets.strip.downcase
        case input
        when "1"                
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/deathknight.shtml"))
            puts desription = doc.css("span")[1].text
        when "2"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/dreadlord.shtml"))
            puts desription = doc.css("span")[1].text
        when "3"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/lich.shtml"))
            puts desription = doc.css("span")[0].text
            #puts desription = doc.css("span").text
            #binding.pry
        when "4"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/cryptlord.shtml"))
            puts desription = doc.css("span")[0].text
        when "5"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/acolyte.shtml"))
            puts desription = doc.css("span")[0].text
            #binding.pry
        when "6"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/ghoul.shtml"))
            puts desription = doc.css("span")[0].text
        when "7"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/cryptfiend.shtml"))
            puts desription = doc.css("span")[0].text
        when "8"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/gargoyle.shtml"))
            puts desription = doc.css("span")[0].text
        when "9"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/abomination.shtml"))
            puts desription = doc.css("span")[0].text
        when "10"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/meatwagon.shtml"))
            puts desription = doc.css("span")[0].text
        when "11"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/obsidianstatue.shtml"))
            puts desription = doc.css("span")[0].text
        when "12"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/destroyer.shtml"))
            puts desription = doc.css("span")[0].text
        when "13"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/necromancer.shtml"))
            puts desription = doc.css("span")[0].text
        when "14"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/banshee.shtml"))
            puts desription = doc.css("span")[0].text
        when "15"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/shade.shtml"))
            puts desription = doc.css("span")[0].text
        when "16"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/frostwyrm.shtml"))
            puts desription = doc.css("span")[0].text
        when "17"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/infernal.shtml"))
            puts desription = doc.css("span")[0].text
        when "18"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/skeletonwarrior.shtml"))
            puts desription = doc.css("span")[0].text
        when "19"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/skeletalmage.shtml"))
            puts desription = doc.css("span")[0].text
        when "20"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/undead/units/carrionbeetle.shtml"))
            puts desription = doc.css("span")[0].text
        end     
    end
end
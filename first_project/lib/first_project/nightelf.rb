class FirstProject::Nightelfs
    def self.call
        puts "The reclusive Night Elves were the first race to awaken in the World of Warcraft. These shadowy, 
        immortal beings were the first to study magic and let it loose throughout the world nearly ten thousand years 
        before Warcraft I. The Night Elves' reckless use of magic drew the Burning Legion into the world and led to a 
        catastrophic war between the two titanic races. The Night Elves barely managed to banish the Legion from the 
        world, but their wondrous homeland was shattered and drowned by the sea. Ever since, the Night Elves refused 
        to use magic for fear that the dreaded Legion would return. The Night Elves closed themselves off from the rest 
        of the world and remained hidden atop their holy mountain of Hyjal for many thousands of years. As a race, 
        Night Elves are typically honorable and just, but they are very distrusting of the 'lesser races' of the world. 
        They are nocturnal by nature and their shadowy powers often elicit the same distrust that they have for their 
        mortal neighbors.".gsub /^\s*/, ''
        
        self.scrape_nightElf
    end

    def self.scrape_nightElf
        doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/"))
        puts ""
        puts "Night elf heros are: "
        #binding.pry
        puts "1. " + demonHunter = doc.css(".tiny")[10].text
        puts "2. " + keeperOfTheGrove = doc.css(".tiny")[11].text
        puts "3. " + priestessOfTheMoon = doc.css(".tiny")[12].text
        puts "4. " + warden = doc.css(".tiny")[13].text
        
    
        puts ""
        puts "Night elf units are: "
        puts "5. " + wisp = doc.css(".tiny")[14].text
        puts "6. " + archer = doc.css(".tiny")[15].text
        puts "7. " + huntress = doc.css(".tiny")[16].text
        puts "8. " + glaiveThrower = doc.css(".tiny")[17].text
        puts "9. " + dryad = doc.css(".tiny")[18].text
        puts "10. " + druidOfTheClaw = doc.css(".tiny")[19].text
        puts "11. " + mountainGiant = doc.css(".tiny")[20].text
        puts "12. " + hippogryph = doc.css(".tiny")[21].text
        puts "13. " + druidOfTheTalon = doc.css(".tiny")[22].text
        puts "14. " + faerieDragon = doc.css(".tiny")[23].text
        puts "15. " + hippogryphRider = doc.css(".tiny")[24].text
        puts "16. " + chimaera = doc.css(".tiny")[25].text
        puts "17. " + treant = doc.css(".tiny")[26].text
        puts "18. " + owl = doc.css(".tiny")[27].text
        puts "19. " + avatarOfVengeance = doc.css(".tiny")[28].text
        puts "20. " + spiritOfVengeance = doc.css(".tiny")[29].text
        puts ""

        self.select_nightelf_unit
    end


    def self.select_nightelf_unit
        
        input = nil
    
       puts "Please select a unit you want to learn more about."
        input = gets.strip.downcase
        case input
        when "1"                
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/demonhunter.shtml"))
            puts desription = doc.css("span")[1].text
        when "2"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/keeperofthegrove.shtml"))
            puts desription = doc.css("span")[1].text
        when "3"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/priestessofthemoon.shtml"))
            puts desription = doc.css("span")[1].text
        when "4"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/warden.shtml"))
            puts desription = doc.css("span")[1].text
        when "5"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/wisp.shtml"))
            puts desription = doc.css("span")[1].text
        when "6"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/hunightelfman/units/archer.shtml"))
            puts desription = doc.css("span")[1].text
        when "7"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/huntress.shtml"))
            puts desription = doc.css("span")[1].text
        when "8"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/glaivethrower.shtml"))
            puts desription = doc.css("span")[1].text
        when "9"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/dryad.shtml"))
            puts desription = doc.css("span")[1].text
        when "10"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/druidoftheclaw.shtml"))
            puts desription = doc.css("span")[1].text
        when "11"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/mountaingiant.shtml"))
            puts desription = doc.css("span")[1].text
        when "12"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/hippogryph.shtml"))
            puts desription = doc.css("span")[1].text
        when "13"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/druidofthetalon.shtml"))
            puts desription = doc.css("span")[1].text
        when "14"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/faeriedragon.shtml"))
            puts desription = doc.css("span")[1].text
        when "15"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/hippogryphrider.shtml"))
            puts desription = doc.css("span")[1].text
        when "16"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/chimaera.shtml"))
            puts desription = doc.css("span")[1].text
        when "17"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/treant.shtml"))
            puts desription = doc.css("span")[1].text
        when "18"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/owl.shtml"))
            puts desription = doc.css("span")[1].text
        when "19"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/avatarofvengeance.shtml"))
            puts desription = doc.css("span")[1].text
        when "20"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/nightelf/units/spiritofvengeance.shtml"))
            puts desription = doc.css("span")[1].text
        end     
    end
end
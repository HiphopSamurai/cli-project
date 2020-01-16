class FirstProject::Orcs

    def self.call
        puts "	The Orcs, who once cultivated a quiet Shamanistic society upon the world of Draenor, were corrupted by the chaos magics of the Burning Legion and formed into a voracious, unstoppable Horde. Lured to the world of Azeroth through a dimensional gateway, the Horde was manipulated into waging war against the human nations of Azeroth and Lordaeron. Hoping that the Horde would conquer the mortal armies of Azeroth, the Burning Legion made ready for its final invasion of the unsuspecting world.
        Now, under the visionary leadership of Thrall, the Orcs have stripped themselves of their demonic influences and stand ready to combat the vile Legion with courage and honor. Using the ancient, Shamanistic magics of their rediscovered culture, the powerful warriors of the Horde will stop at nothing to ensure that they're never used as pawns again.".gsub /^\s*/, ''
        
        self.scrape_orc
    
    end

    def self.scrape_orc
        doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/"))
        puts ""
        puts "Orc heros are: "
        puts "1. " + blademaster = doc.css(".tiny")[10].text
        puts "2. " + farSeer = doc.css(".tiny")[11].text
        puts "3. " + taurenChieftain = doc.css(".tiny")[12].text
        puts "4. " + shadowHunter = doc.css(".tiny")[13].text

    
        puts ""
        puts "Orc units are: "
        puts "5. " + peon = doc.css(".tiny")[14].text
        puts "6. " + grunt = doc.css(".tiny")[15].text
        puts "7. " + trollHeadhunter = doc.css(".tiny")[16].text
        puts "8. " + trollBerserker = doc.css(".tiny")[17].text
        puts "9. " + demolisher = doc.css(".tiny")[18].text
        puts "10. " + shaman = doc.css(".tiny")[19].text
        puts "11. " + witchDoctor = doc.css(".tiny")[20].text
        puts "12. " + spiritWalker = doc.css(".tiny")[21].text
        puts "13. " + raider = doc.css(".tiny")[22].text
        puts "14. " + kodoBeast = doc.css(".tiny")[23].text
        puts "15. " + windRider = doc.css(".tiny")[24].text
        puts "16. " + trollBatrider = doc.css(".tiny")[25].text
        puts "17. " + tauren = doc.css(".tiny")[26].text
        puts "18. " + spiritWolf = doc.css(".tiny")[27].text
        puts "19. " + direWolf = doc.css(".tiny")[28].text
        puts "20. " + shadowWolf = doc.css(".tiny")[29].text
        puts "21. " + serpentWard = doc.css(".tiny")[30].text
        puts ""

        self.select_orc_unit

    end

    def self.select_orc_unit
        
        input = nil

        puts "Please select a unit you want to learn more about."
        input = gets.strip.downcase
        case input
        when "1"                
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/blademaster.shtml"))
            puts desription = doc.css("span")[1].text
        when "2"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/farSeer.shtml"))
            puts desription = doc.css("span")[1].text
        when "3"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/taurenChieftain.shtml"))
            puts desription = doc.css("span")[1].text
        when "4"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/shadowHunter.shtml"))
            puts desription = doc.css("span")[1].text
        when "5"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/peon.shtml"))
            puts desription = doc.css("span")[1].text
        when "6"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/grunt.shtml"))
            puts desription = doc.css("span")[1].text
        when "7"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/trollBerserker.shtml"))
            puts desription = doc.css("span")[1].text
        when "8"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/trollberserker.shtml"))
            puts desription = doc.css("span")[1].text
        when "9"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/demolisher.shtml"))
            puts desription = doc.css("span")[1].text
        when "10"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/shaman.shtml"))
            puts desription = doc.css("span")[1].text
        when "11"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/witchdoctor.shtml"))
            puts desription = doc.css("span")[1].text
        when "12"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/spiritwalker.shtml"))
            puts desription = doc.css("span")[1].text
        when "13"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/raider.shtml"))
            puts desription = doc.css("span")[1].text
        when "14"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/kodobeast.shtml"))
            puts desription = doc.css("span")[1].text
        when "15"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/windrider.shtml"))
            puts desription = doc.css("span")[1].text
        when "16"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/trollbatrider.shtml"))
            puts desription = doc.css("span")[1].text
        when "17"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/tauren.shtml"))
            puts desription = doc.css("span")[1].text
        when "18"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/spiritwolf.shtml"))
            puts desription = doc.css("span")[1].text
        when "19"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/direwolf.shtml"))
            puts desription = doc.css("span")[1].text
        when "20"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/shadowwolf.shtml"))
            puts desription = doc.css("span")[1].text
        when "21"
            doc = Nokogiri::HTML(open("http://classic.battle.net/war3/orc/units/serpentward.shtml"))
            puts desription = doc.css("span")[1].text
        end     
    end

end
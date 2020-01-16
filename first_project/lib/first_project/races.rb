class FirstProject::Races

    def self.units
        puts <<-Doc.gsub /^\s*/, ''
        1. Human
        2. Orcs
        3. Undead
        4. Nightelf
        Doc
    end
end
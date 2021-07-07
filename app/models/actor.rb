class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        characters.collect do |character|
            "#{character.name} - #{character.show.name}" 
            #this takes the name of the characters and shows that this actor has been in
        end
    end
end
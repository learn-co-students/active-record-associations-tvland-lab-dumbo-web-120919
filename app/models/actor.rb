class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    #returns first and last name of actors
    def full_name
        self.first_name + " " + self.last_name
    end
    #outputs array of strings of roles and characters
    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end
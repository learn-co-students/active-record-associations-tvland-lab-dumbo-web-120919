class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
    #returns the catchprase of the character in a string with precedent
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
end
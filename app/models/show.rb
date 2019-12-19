class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
    #returns array of all actors associated with show
    def actors_list
        self.actors.map(&:full_name)
    end
end
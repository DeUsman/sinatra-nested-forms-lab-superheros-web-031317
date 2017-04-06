
class Hero
	attr_accessor :name, :power, :biography
	ALL = []

	def initialize(hero)
		@name = hero[:name]
		@power = hero[:power]
		@biography = hero[:biography]
		ALL << self
	end

	def self.all
		ALL
	end

end
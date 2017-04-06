
class Team
	attr_accessor :name, :motto
	ALL = []

	def initialize(team)
		@name = team[:name]
		@motto = team[:motto]
		ALL << self
	end

	def self.all
		ALL
	end

end
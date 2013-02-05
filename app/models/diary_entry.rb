class DiaryEntry < ActiveRecord::Base
	attr_accessible :title,:description,:mood

	def self.happy_alphabetical
		where(mood: 'happy').limit(5).order(:title)
	end

	def happy?
		mood == "Happy"
	end	
end


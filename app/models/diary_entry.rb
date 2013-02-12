class DiaryEntry < ActiveRecord::Base
	attr_accessible :title,:description,:mood

	validates :title, :description, presence: true
	validates :title, :uniqueness => true
	#validate :check_mood

	def self.happy_alphabetical
		where(mood: 'happy').limit(5).order(:title)
	end

	def happy?
		mood == "Happy"
	end	

	def check_mood
		if (Time.now.monday? && :mood!='happy') || (Time.now.thursday? && :mood!='happy')
		errors[:mood] << "must be happy"
	end
end
end


class DiaryEntriesController < ApplicationController
	def index
		@diary_entries = DiaryEntry.all
		# @count-DiaryEntry.count
		# @happy = DiaryEntry.positive.count
		# @happy_green = DiaryEntry.positive
	end

 	def show
   		@diary_entry = DiaryEntry.find(params[:id])
  	end

	def new
		@diary_entry = DiaryEntry.new
	end

	def edit
		@diary_entry = DiaryEntry.find(params[:id])
	end

	def update
		@diary_entry = DiaryEntry.find(params[:id])
		
		if @diary_entry.update_attributes params [:diary_entries]
			redirect_to diary_entries_path
		else
			render :edit
	end
	end

	def destroy
		@diary_entry = DiaryEntry.find(params[:id])
		@diary_entry.destroy
		redirect_to diary_entries_path
	end

	def create
		@diary_entry = DiaryEntry.new params["diary_entry"]
		
		if @diary_entry.save
			redirect_to diary_entries_path
		else
		render :new	
		#render text: params["diary_entry"].to_s
	end
end
end

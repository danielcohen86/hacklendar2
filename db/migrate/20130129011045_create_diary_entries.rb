class CreateDiaryEntries < ActiveRecord::Migration
  def change
  	create_table :diary_entries do |d|
  		d.string :title
  		d.text :description
  		d.string :mood
  		d.timestamps
  end
end
end

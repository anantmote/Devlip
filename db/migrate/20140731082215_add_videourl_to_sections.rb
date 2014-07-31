class AddVideourlToSections < ActiveRecord::Migration
  def change
  	add_column :sections, :videourl, :string
  end
end

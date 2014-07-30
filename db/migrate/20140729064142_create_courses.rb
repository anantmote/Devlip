class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end

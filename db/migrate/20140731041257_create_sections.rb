class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :course_id
      t.string :title

      t.timestamps
    end
    add_index :sections, [:course_id, :created_at]
  end
end

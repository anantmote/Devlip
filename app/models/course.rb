class Course < ActiveRecord::Base

	validates :title,  presence: true, length: { maximum: 25 }, uniqueness: true
  	validates :description, presence: true, length: { maximum: 100}
  	validates :duration , presence: true
end

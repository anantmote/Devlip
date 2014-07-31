class Course < ActiveRecord::Base
	has_many :sections ,dependent: :destroy # when a course is deleted all sections of it will destroy
	validates :title,  presence: true, length: { maximum: 25 }, uniqueness: true
  	validates :description, presence: true, length: { maximum: 100}
  	validates :duration , presence: true
end

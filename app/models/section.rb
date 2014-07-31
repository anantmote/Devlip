class Section < ActiveRecord::Base
	belongs_to :course
	default_scope -> { order('created_at DESC') }
	validates :title, presence: true , length: { maximum: 200 }
	#validates :course_id, presence: true
	validates :videourl, presence: true 
end

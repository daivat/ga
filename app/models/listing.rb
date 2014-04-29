class Listing < ActiveRecord::Base

	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "https://lh6.ggpht.com/ifiIqmTG7AFXEqbxiBlHn2BD18ufYcQvg_QdqtZPuyIycYGJtNXtniTzSba4XkvLdA=w300"
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
	validates :title, presence: true, length: { minimum: 3 }
	validates :description, presence: true
	validates :location, presence: true
	validates :date, presence: true
	validates :contact, presence: true
end

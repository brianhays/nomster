class Place < ActiveRecord::Base

	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :photos, dependent: :destroy
	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :name, presence: true, length: {minimum: 3}
	validates :address, presence: true
	validates :description, presence: true, length: { minimum: 5, maximum: 1000 }
end

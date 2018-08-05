# == Schema Information
#
# Table name: instruments
#
#  id          :bigint(8)        not null, primary key
#  brand       :string
#  model       :string
#  description :text
#  condition   :string
#  finish      :string
#  title       :string
#  price       :decimal(5, 2)    default(0.0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string
#  user_id     :integer
#

class Instrument < ApplicationRecord

	mount_uploader :image, ImageUploader

	belongs_to :user, optional: true

	validates :title, :brand, :price, :model, presence: true 
	validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed." }
	validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed." }
	validates :price, numericality: { only_integer: true }, length: { maximum: 7 }
	validates :image, presence: true

	BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
  FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
	CONDITION = %w{ New Excellent Mint Used Fair Poor } 

end
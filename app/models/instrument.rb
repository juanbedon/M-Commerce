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
#

class Instrument < ApplicationRecord
end

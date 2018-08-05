# == Schema Information
#
# Table name: line_items
#
#  id            :bigint(8)        not null, primary key
#  instrument_id :bigint(8)
#  cart_id       :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  quantity      :integer          default(1)
#

class LineItem < ApplicationRecord

  belongs_to :instrument
  belongs_to :cart
  
  def total_price
  	instrument.price.to_i * quantity.to_i
  end

end

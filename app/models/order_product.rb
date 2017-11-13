class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_unit_price
  before_save :set_total_cost

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_cost
    unit_price * quantity
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total_cost
    self[:total_cost] = set_total_cost * quantity
  end

end

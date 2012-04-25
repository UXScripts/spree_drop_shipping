class DropShipLineItem < ActiveRecord::Base

  belongs_to :drop_ship_order
  belongs_to :variant

  validates :drop_ship_order_id, :variant_id, :sku, :quantity, :price, :presence => true

  def subtotal
    self.quantity.to_i * self.price.to_f
  end

end

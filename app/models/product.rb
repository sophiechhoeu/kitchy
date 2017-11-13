class Product < ApplicationRecord
  include ImageUploader::Attachment.new(:image)

  belongs_to :user
  belongs_to :category
  has_many :charges
  has_many :order_products

  has_many :transactions


  def self.search(search)
  where("product_name ILIKE ?", "%#{search}%" )
  end

end

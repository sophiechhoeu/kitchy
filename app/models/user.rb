class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products
  has_one :profile
  has_many :charges
  has_many :transactions

  has_many :messages
  has_many :conversations, foreign_key: :sender_id

end

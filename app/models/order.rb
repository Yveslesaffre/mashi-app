class Order < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user, dependent: :destroy
  belongs_to :product
  belongs_to :address
end

class Customer < ApplicationRecord
	has_many :orders, :through=> :customers_orders
end

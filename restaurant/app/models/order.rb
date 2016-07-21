class Order < ApplicationRecord
	has_many :customers, :through=> :customers_orders
end

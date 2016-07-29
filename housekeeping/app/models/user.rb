class User < ApplicationRecord
	belongs_to :hotels 	
	belongs_to :roles
end

class Title < ApplicationRecord
    
    has_many :descriptions, dependent: :destroy
end

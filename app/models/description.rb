class Description < ApplicationRecord
  belongs_to :titles
  validates :title_id, presence: true
end

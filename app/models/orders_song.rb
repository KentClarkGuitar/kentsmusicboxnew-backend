class OrdersSong < ApplicationRecord
  belongs_to :order
  belongs_to :song
end

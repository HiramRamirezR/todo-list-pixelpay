class List < ApplicationRecord
  has_many :reviews, dependent: :destroy
end

class Review < ActiveRecord::Base
  belongs_to :user

   validates :review, presence: true
end

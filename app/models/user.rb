class User < ActiveRecord::Base
  has_many :rides
  has_many :bookings, through: :ride
  has_many :reviews, through: :ride
  has_many :rides

  # ========> General validation <=========
  validates :first_name, :last_name, :gender, :date_of_birth, presence: true

  # ========> for sorcery <=========
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true # AY: Added presence validation

  # ========> for paperclip <=======
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end

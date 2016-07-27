class User < ActiveRecord::Base
  has_many :rides
  has_many :bookings
  has_many :reviews

  # ========> General validation <=========
  validates :first_name, :last_name, :gender, :date_of_birth, presence: true
  validates :phone_number, presence: true
  validate :min_age

  # ========> for sorcery <=========
  authenticates_with_sorcery!

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true, presence: true # AY: Added presence validation

  # ========> for paperclip <=======
  has_attached_file :avatar, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "circle_arrow2.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  private

  def min_age
      if date_of_birth.nil? || date_of_birth > 18.years.ago
      errors.add(:date_of_birth, "should be over 18 years ago!")
      end
  end

end

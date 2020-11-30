class TestResult < ApplicationRecord
	#has_one :test_kit, validates: true

	#email validation
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format:{with: VALID_EMAIL_REGEX}

	validates :fullname, presence: true

	validates :age, numericality: { only_integer: true }

	#gender validation 0 for male 1 for female 2 for other
	validates :gender, numericality: { only_integer: true }

	validates :postcode, presence: true, length: {maximum: 8}

  validate :ttcode_shoud_be_valid_and_not_used

  def ttcode_shoud_be_valid_and_not_used
    @testkit = TestKit.find_by(TTNcode: ttn)
    if @testkit.nil?
      errors.add(:ttn, "code does not exist.")
    elsif @testkit.used
      errors.add(:ttn, "code is already used.")
    end
  end

end

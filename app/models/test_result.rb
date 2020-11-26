class TestResult < ApplicationRecord
	has_one :test_kit

	#email validation
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format:{with: VALID_EMAIL_REGEX}

	#ttn validation ?maybe not now
	# validates :ttn, presence: true

	#fullname validation
	validates :fullname, presence: true

	#age validation
	validates :age, numericality: { only_integer: true }

	#gender validation 0 for male 1 for female 2 for other
	validates :gender, numericality: { only_integer: true }

	#postcode validation
	validates :postcode, presence: true, length: {maximum: 8}

end

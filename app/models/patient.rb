class Patient < ApplicationRecord
  authenticates_with_sorcery!

  validates :username, uniqueness: :true, on: :create
  validates :username, format: { with: /\A[A-Za-z][A-Za-z0-9]+\z/ } # alphanumeric
  validates :username, length: { in: 8..16 }
  validates :password, length: { in: 8..64 }, if: :should_validate_password?
  validate  :password_is_uncommon?, if: :should_validate_password?
  validate  :password_is_numeric?,  if: :should_validate_password?

  # validate password on sign up and password change
  def should_validate_password?
    new_record? || password.present?
  end

  # match password against a list of common passwords
  def password_is_uncommon?
    errors.add(:password, "is very common") unless File.open("#{Rails.root}/100k-most-used-passwords-NCSC.txt", "rb").lazy.detect { |line| line =~ /#{password}/i }.nil?
  end

  def password_is_numeric?
    errors.add(:password, "is numeric") if !!Kernel.Float(password)
  rescue TypeError, ArgumentError
    false
  end
end

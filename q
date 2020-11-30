class Admin < ApplicationRecord
  require 'digest'
  
  attr_accessor :remember_token

  def Admin.make_digest(plaintext)
    Digest::SHA256.hexdigest(plaintext).upcase
  end
    
  def Admin.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = Admin.new_token
    update_attribute(:remember_digest, Admin.make_digest(remember_token))
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?
    Admin.make_digest(remember_token) == self.remember_digest
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

private
  def admin_params
    params.require(:admin).permit(:username, :password)
  end
end

class Admin < ApplicationRecord
  require 'digest'
  
  def Admin.get_password_digest(plaintext)
    Digest::SHA256.digest plaintext
  end
    
end

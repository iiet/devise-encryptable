require 'bcrypt'

module Devise
  module Encryptable
    module Encryptors
      # = Bcrypt
      # Uses the Bcrypt hash algorithm to encrypt passwords.
      class Bcrypt < Base
        # Generates a default password digest based on salt, pepper and the
        # incoming password.
        def self.digest(password, stretches, salt, pepper)
          ::BCrypt::Password.create("#{password}#{pepper}", cost: stretches).to_s
        end

        def self.compare(encrypted_password, password, stretches, salt, pepper)
          return false if encrypted_password.blank?
          begin
            bcrypt   = ::BCrypt::Password.new(encrypted_password)
            password = ::BCrypt::Engine.hash_secret("#{password}#{pepper}", bcrypt.salt)
            Devise.secure_compare(password, encrypted_password)
          rescue ::BCrypt::Errors::InvalidHash
            false
          end
        end

      end
    end
  end
end

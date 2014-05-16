module Devise
  module Encryptable
    module Encryptors
      # = PhpassAndBcrypt
      # Uses the Phpass hash algorithm to encrypt passwords.
      class PhpassAndBcrypt < Base
        # Generates a default password digest based on salt, pepper and the
        # incoming password.
        def self.digest(password, stretches, salt, pepper)
          Bcrypt.digest(password, stretches, salt, pepper)
        end

        def self.compare(encrypted_password, password, stretches, salt, pepper)
          Phpass.compare(encrypted_password, password, stretches, salt, pepper) || Bcrypt.compare(encrypted_password, password, stretches, salt, pepper)
        end
      end
    end
  end
end

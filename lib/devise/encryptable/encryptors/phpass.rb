require 'phpass'

module Devise
  module Encryptable
    module Encryptors
      # = Phpass
      # Uses the Phpass hash algorithm to encrypt passwords.
      class Phpass < Base
        # Generates a default password digest based on salt, pepper and the
        # incoming password.
        def self.digest(password, stretches, salt, pepper)
          phpass = ::Phpass.new(stretches)
          phpass.hash("#{password}#{pepper}")
        end

        def self.compare(encrypted_password, password, stretches, salt, pepper)
          phpass = ::Phpass.new(stretches)
          phpass.check("#{password}#{pepper}", encrypted_password)
        end
      end
    end
  end
end

module Devise

  # Declare encryptors length which are used in migrations.
  ENCRYPTORS_LENGTH = {
    :sha1   => 40,
    :sha512 => 128,
    :clearance_sha1 => 40,
    :restful_authentication_sha1 => 40,
    :authlogic_sha512 => 128
  }

  # Used to define the password encryption algorithm.
  mattr_accessor :encryptor
  @@encryptor = nil

  module Encryptable
    module Encryptors
      autoload :AuthlogicSha512, 'devise/encryptable/encryptors/authlogic_sha512'
      autoload :Base, 'devise/encryptable/encryptors/base'
      autoload :Bcrypt, 'devise/encryptable/encryptors/bcrypt'
      autoload :ClearanceSha1, 'devise/encryptable/encryptors/clearance_sha1'
      autoload :Phpass, 'devise/encryptable/encryptors/phpass'
      autoload :PhpassAndBcrypt, 'devise/encryptable/encryptors/phpass_and_bcrypt'
      autoload :RestfulAuthenticationSha1, 'devise/encryptable/encryptors/restful_authentication_sha1'
      autoload :Sha1, 'devise/encryptable/encryptors/sha1'
      autoload :Sha512, 'devise/encryptable/encryptors/sha512'
    end
  end
end

Devise.add_module(:encryptable, :model => 'devise/encryptable/model')

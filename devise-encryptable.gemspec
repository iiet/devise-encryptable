# -*- encoding: utf-8 -*-
# stub: devise-encryptable 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-encryptable"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Carlos Antonio da Silva", "Jos\u{e9} Valim", "Rodrigo Flores"]
  s.date = "2014-05-16"
  s.description = "Encryption solution for salted-encryptors on Devise"
  s.email = "opensource@plataformatec.com.br"
  s.files = ["Changelog.md", "LICENSE", "README.md", "lib/devise", "lib/devise-encryptable.rb", "lib/devise/encryptable", "lib/devise/encryptable/encryptable.rb", "lib/devise/encryptable/encryptors", "lib/devise/encryptable/encryptors/authlogic_sha512.rb", "lib/devise/encryptable/encryptors/base.rb", "lib/devise/encryptable/encryptors/clearance_sha1.rb", "lib/devise/encryptable/encryptors/phpass.rb", "lib/devise/encryptable/encryptors/restful_authentication_sha1.rb", "lib/devise/encryptable/encryptors/sha1.rb", "lib/devise/encryptable/encryptors/sha512.rb", "lib/devise/encryptable/model.rb", "lib/devise/encryptable/version.rb", "test/devise/encryptable/encryptable_test.rb", "test/devise/encryptable/encryptors_test.rb", "test/rails_app/app/controllers/application_controller.rb", "test/rails_app/app/models/admin.rb", "test/rails_app/app/models/user.rb", "test/rails_app/config/application.rb", "test/rails_app/config/boot.rb", "test/rails_app/config/environment.rb", "test/rails_app/config/environments/development.rb", "test/rails_app/config/environments/production.rb", "test/rails_app/config/environments/test.rb", "test/rails_app/config/initializers/devise.rb", "test/rails_app/db/migrate/20120508165529_create_tables.rb", "test/support/assertions.rb", "test/support/factories.rb", "test/support/swappers.rb", "test/test_helper.rb"]
  s.homepage = "http://github.com/plataformatec/devise-encryptable"
  s.licenses = ["Apache 2.0"]
  s.rubygems_version = "2.2.2"
  s.summary = "Encryption solution for salted-encryptors on Devise"
  s.test_files = ["test/rails_app/db/migrate/20120508165529_create_tables.rb", "test/rails_app/app/controllers/application_controller.rb", "test/rails_app/app/models/user.rb", "test/rails_app/app/models/admin.rb", "test/rails_app/config/initializers/devise.rb", "test/rails_app/config/environments/production.rb", "test/rails_app/config/environments/development.rb", "test/rails_app/config/environments/test.rb", "test/rails_app/config/boot.rb", "test/rails_app/config/application.rb", "test/rails_app/config/environment.rb", "test/test_helper.rb", "test/devise/encryptable/encryptable_test.rb", "test/devise/encryptable/encryptors_test.rb", "test/support/factories.rb", "test/support/swappers.rb", "test/support/assertions.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>, [">= 2.1.0"])
    else
      s.add_dependency(%q<devise>, [">= 2.1.0"])
    end
  else
    s.add_dependency(%q<devise>, [">= 2.1.0"])
  end
end

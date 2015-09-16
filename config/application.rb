require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module Novo_Pacheco
  class Application < Rails::Application
    config.i18n.default_locale = :es
    config.time_zone = 'Buenos Aires' 
    config.active_record.default_timezone = :local
    config.active_record.raise_in_transactional_callbacks = true
  end
end

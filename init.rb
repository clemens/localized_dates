require 'localized_dates'

# load all locales from config/locales
locales_dir = File.join(RAILS_ROOT, 'config', 'locales')
Dir["#{locales_dir}/*.{rb,yml}"].uniq.each do |locale_file|
  Rails.logger.info "** [localized_dates] loading file #{locale_file}"
  I18n.load_path << locale_file
end

Rails.logger.info '** [localized_dates] locales loaded from config/locales.'

# set default locale to en
I18n.default_locale = 'en'
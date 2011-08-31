require 'active_record'

module ModelFieldsI18n
  def t(column)
    if I18n.locale == I18n.default_locale
      read_attribute(column)
    else
      read_attribute(:"#{column}_#{I18n.locale}")
    end
  end
end

ActiveRecord::Base.send(:include, ModelFieldsI18n)

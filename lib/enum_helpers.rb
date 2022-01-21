# frozen_string_literal: true

require "active_record"

require_relative "enum_helpers/version"

module EnumHelpers
  def enum_helpers(column)
    define_method :"#{column}_name" do
      I18n.t("activerecord.enums.#{model_name.i18n_key}.#{column}.#{send(column)}") if send(column).present?
    end

    define_singleton_method :"#{column}_options" do
      send(column.to_s.pluralize).map { |k, v| [I18n.t("activerecord.enums.#{model_name.i18n_key}.#{column}.#{k}"), k] }
    end
  end
end

ActiveRecord::Base.send :extend, EnumHelpers

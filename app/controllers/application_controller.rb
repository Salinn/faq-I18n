class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def set_locale
    if cookies[:faq_locale] && I18n.available_locales.include?(cookies[:faq_locale].to_sym)
      l = cookies[:faq_locale].to_sym
    else
      l = I18n.default_locale
      cookies.permanent[:faq_locale] = l
    end
    I18n.locale = l
  end
end

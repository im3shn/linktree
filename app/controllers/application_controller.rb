class ApplicationController < ActionController::Base
  before_action :set_should_render_navbar

  def set_should_render_navbar
    @should_render_navbar = true
  end
end

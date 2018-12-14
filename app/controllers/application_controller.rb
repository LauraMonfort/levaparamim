class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  def default_url_options
  { host: ENV["HOST"] || "www.levitraz.com" }
  end

end

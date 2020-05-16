class ApplicationController < ActionController::Base
    include SessionsHelper
    add_flash_types :danger, :info, :warning, :success, :alert

end

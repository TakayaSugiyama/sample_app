class ApplicationController < ActionController::Base
    class ApplicationController < ActionController::Base
        add_flash_types :success, :info, :warning, :danger
        include SessionsHelper
    end
end

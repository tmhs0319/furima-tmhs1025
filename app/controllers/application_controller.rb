class ApplicationController < ActionController::Base
  before_action :basic_auth


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
<<<<<<< Updated upstream
      username == 'admin' && password == '2222'
=======
      username == 'tmhs1025' && password == 'tmhs1025'
>>>>>>> Stashed changes
    end
  end
end
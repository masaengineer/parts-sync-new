class Users::SessionsController < Devise::SessionsController
  layout 'devise'

  # 必要に応じてアクションをオーバーライド可能
  # def new
  #   super
  # end
end
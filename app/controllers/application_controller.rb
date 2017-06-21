class ApplicationController < ActionController::API
  serialization_scope :view_context

  def decode_token
    jwt = JWT.decode(params[:token], ENV['JWT_SECRET'], ENV['JWT_ALGORITHM'])
    user = User.find(jwt[0]['user_id'])
    render json: user
    # else
    # render json: {error: 'DECODE NOT WOKRING'}, status: 400
    # end
  end
end

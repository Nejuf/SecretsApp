class SecretsController < ApplicationController

  def create

    @secret = Secret.new(params[:secret])
    @secret.author_id = current_user.id

    if @secret.save
      #redirect_to user_url(@secret.recipient)
      render json: @secret
    else
      head 406
      # render :json => @secret.errors
    end
  end

end

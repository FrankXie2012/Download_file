class AuthenticationsController < ApplicationController
  def to_form
    @authentication = Authentication.new
    respond_to do |format|
      format.html
    end
  end

  def log_in
    if params[:authentication][:account] == "cslg" && params[:authentication][:password] == "barca"
      redirect_to majors_path(auth: 'clsg')
    else
      redirect_to to_form_path, notice: 'Wrong account or password'
    end
  end
end
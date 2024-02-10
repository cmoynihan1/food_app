class ApplicationController < ActionController::Base

  def test
    value = permitted_params[:param_1]
    render json: {
      'test' => value
    }
  end

  def permitted_params
    params.permit(:param_1)
  end
end



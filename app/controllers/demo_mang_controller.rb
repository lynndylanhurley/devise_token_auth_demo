class DemoMangController < ApplicationController
  before_action :authenticate_mang!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_mang.email}",
        user: current_mang
      }
    }, status: 200
  end
end

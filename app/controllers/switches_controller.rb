class SwitchesController < ApplicationController
  def index
    render json: Switch.all
  end

  def show
    switch = Switch.find(params[:id])
    render json: switch
  end

  def update
    switch = Switch.find(params[:id])
    switch.update(switch_params)
    render json: switch
  end

  def create
    switch = Switch.create(switch_params)
    render json: switch
  end

  private

  def switch_params
    params.require(:switch).permit(
      :name,
      :manufacturer,
      :force,
      :base_color,
      :shaft_color,
      :feeling,
      :image_url,
      :sound_url,
    )
  end
end

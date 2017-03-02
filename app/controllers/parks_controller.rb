class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  # def create
  #   @park = Park.new(message_params)
  #   if @park.save
  #     redirect_to '/parks'
  #   else
  #     render 'new'
  #   end
  # end

  # private
  #
  # def message_params
  #   params.require(:message).permit(:content)
  # end

end

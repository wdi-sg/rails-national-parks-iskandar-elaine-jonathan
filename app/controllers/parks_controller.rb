class ParksController < ApplicationController

  def index
    @parks = Park.all

    respond_to do |format|
      format.html
      format.json { render json: @parks }
    end

  end

  def show
    @park = Park.find(params[:id])
    # byebug # stops the rails at this specific code line and you can query anything before the byebug
    respond_to do |format|
      format.html
      format.json { render json: @park }
    end

  end

  def new
    @new_park = Park.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def create
  # @park = Park.new(message_params)
  # if @park.save
  #   redirect_to '/parks'
  # else
  #   render 'new'
  # end
  # end

  # private
  #
  # def message_params
  #   params.require(:message).permit(:content)
  # end

end

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

  # new and create must have the same @new_park. They must refer to the same thing.

  def create
    @new_park = Park.new(park_params)
    if @new_park.save

      respond_to do |format|
        format.html { redirect_to parks_path }
        format.json { render json: { message: 'Success creating new park'} }
      end

      redirect_to parks_path
    else
      render new_park_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  # def create
  # end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end

end

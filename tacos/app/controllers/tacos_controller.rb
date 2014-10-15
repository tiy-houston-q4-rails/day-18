class TacosController < ApplicationController

  def index
    @tacos = Taco.all
  end

  def show
    @taco = Taco.find(params[:id])
  end

  def new
    @taco = Taco.new(delicious: true)
  end

  def create
    # { "utf8"=>"✓",
    #   "authenticity_token"=>"+iVXXTRIqKZC3jgYEmGFWd4et4PiEnn8P8MVIpBedoE=",
    #   "taco"=>{
    #     "name"=>"crispy crispies",
    #     "ingredients"=>"",
    #     "admin"=>true,
    #     "delicious"=>"1"
    #   },
    #   "commit"=>"Create Taco"
    # }

    @taco = Taco.new(taco_params)
    if @taco.save
      redirect_to tacos_path, notice: "Taco saved!"
    else
      # taco is invalid
      render :new
    end

  end

  def edit
    @taco = Taco.find(params[:id])
  end

  def update
    @taco = Taco.find(params[:id])
    if @taco.update(taco_params)
      redirect_to @taco, notice: "Taco saved!"
    else
      # taco is invalid
      render :edit
    end
  end

  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy
    redirect_to tacos_path, notice: "Taco BAM DESTROYED BAM"
  end

  def taco_params
    params.require(:taco).permit(:name, :ingredients, :photo_url, :delicious)
  end
end

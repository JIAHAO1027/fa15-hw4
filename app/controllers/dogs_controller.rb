class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def edit
  end

  def update
  end

  def create
    Dog.create dog_params
    redirect_to :dogs
  end

  def dog_params
    params.require(:dog).permit(:name, :age)
  end

  def destroy
  end

  def show
    @onedog = Dog.find(params[:id])
  end
end

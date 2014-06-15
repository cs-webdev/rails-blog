class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find params[:id]
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find params[:id]
  end

  def update
    @cat = Cat.find params[:id]
    if cat.update(cat_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Cat.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :no_legs)
  end
end

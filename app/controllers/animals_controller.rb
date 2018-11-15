class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
    # render partial: "form"
  end
  
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to new_animal_path
    else
      render :new
    end
  end
  
  def edit
    render partial: "form"
  end
  
  def update
    if @animal.update(animal_params)
        redirect_to @animal
      else
        render :edit
      end
  end

  def destroy
    @animal.destroy
    redirect_to animal_path
  end

    private

    def set_animal
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.require(:animal).permit(:name, :type, :age)
    end


end

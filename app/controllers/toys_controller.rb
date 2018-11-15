class ToysController < ApplicationController
  
  before_action :set_animal
  before_action :set_toy, only: [:show, :edit, :update, :destroy]
  
  def index
    @toys = @animal.toys
  end

  def show
  end

  def new
    # @toy = @animal.toys.new
    render partial: "form"
  end

  def create
    @toy = @animal.toys.new(toy_params)

    if @toy.save
      redirect_to [@animal, @toy]
    else 
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @toy.update(toy_params)
      redirect_to [@animal, @toy]
    else
      render :edit
    end
  end

  def destroy
    @toy.destroy
    redirect_to animal_toy_path
  end


    private

    def set_animal
      @animal = Animal.find(params[:animal_id])
    end

    def set_toy
      @toy = Toy.find(params[:id])
    end

    def toy_params
      params.require(:toy).permit(:name, :description, :amount)
    end

end

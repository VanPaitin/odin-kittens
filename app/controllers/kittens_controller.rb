class KittensController < ApplicationController
  before_action :find_kitten, except: [:index, :new, :create]
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def show

  end

  def edit

  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, success: "a new kitten has been created successfully"
    else
      flash.now[:danger] = "An error occurred"
      render 'new'
    end
  end

  def update
    if @kitten.update(kitten_params)
      flash[:success] = "Operation is successful"
      redirect_to @kitten
    else
      flash.now[:danger] = "An error occurred"
      render "edit"
    end
  end

  def destroy
    @kitten.destroy
    flash[:success] = "Kitten is successfully deleted"
    redirect_to kittens_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :softness, :age, :cuteness)
  end

  def find_kitten
    @kitten = Kitten.find(params[:id])
  end
end

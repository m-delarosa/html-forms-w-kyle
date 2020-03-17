class DogsController < ApplicationController
  def index
    # @dogs = Dogs.all
    # render json: { dogs: @dogs }
    dogs = Dog.all
    render json: dogs
  end

  def create
    @dog = Dog.create(name: params[:name], age: params[:age])
    # render json: { dog: @dog }, status: :created
    redirect_to "http://localhost:3001/"

    #commenting out to show Kul'es method reccomends using instance method.
    # dog = Dog.create(name: params[:name], age: params[:age])
    # render json: dog
  end
end

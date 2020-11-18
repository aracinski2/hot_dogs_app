class Api::HotDogsController < ApplicationController
  def index
    @hot_dogs = HotDog.all
    render 'index.json.jb'
  end

  def show
    @hot_dog = HotDog.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
  def create
    @hot_dog = HotDog.new(
      style: params[:style],
      bun: params[:bun],
      amount: params[:amount]
    )
    @hot_dog.save
    render 'show.json.jb'
  end

  def update
    @hot_dog = HotDog.find_by(id: params[:id])
    @hot_dog.style =params[:style]
    @hot_dog.bun = params[:bun]
    @hot_dog.amount = params[:amount]
    @hot_dog.save
    render 'show.json.jb'
  end

  def delete
    @hot_dog = HotDog.find_by(id: params[:id])
    @hot_dog.destroy
    render json: {message: "item deleted!"}
  end
end

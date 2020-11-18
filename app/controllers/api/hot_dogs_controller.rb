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
end

class ToysController < ApplicationController

  def index
    @toys = Toy.all
    @cats = Cat.all
  end

  def show
    @toy = Toy.find(params[:id])
    @cat = Cat.find_by id:@toy.cat_id
  end

end

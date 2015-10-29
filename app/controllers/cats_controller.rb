class CatsController < ApplicationController


  def index
    @random_cat = Random.new.rand(Cat.count) + 1
    @cat = Cat.all
  end

  def show
    @cat = Cat.find(params["id"])
    @random_cat = Random.new.rand(Cat.count) + 1
  end
end

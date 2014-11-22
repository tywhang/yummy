class AdminController < ApplicationController
  def index
    @sections = Section.all
    @items = Item.all
  end
end

class PagesController < ApplicationController

  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:format])
  end

end

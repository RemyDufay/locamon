class PagesController < ApplicationController
  def home

    @pokemon = Pokemon.new

  end
end

class StaticPagesController < ApplicationController
  def index
    @count = session[:count].to_i
  end
end

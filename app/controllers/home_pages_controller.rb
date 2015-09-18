class HomePagesController < ApplicationController
  def index
  	@subjects = Subject.all
  end
end

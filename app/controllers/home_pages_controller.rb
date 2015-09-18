class HomePagesController < ApplicationController
  def index
  	@subjects = Subject.all
  	@upload = Upload.new
  end
end

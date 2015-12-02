class LinksController < ApplicationController
	before_action :set_link, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]
  def index
  	@links = Link.all.order(created_at: :desc)
  end

  def show
  end

  def new
  	@link = current_user.links.build
  end

  def edit
  end

  def create
  	@link = current_user.links.build(link_params)

  	if @link.save
  		redirect_to root_path, notice: 'Link was successfully created.'
  	else
  		render 'new'
  	end
  end

  def update
  	if @link.update(link_params)
  		redirect_to @link, notice: 'Link was successfully updated.'
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@link.destroy
  	redirect_to links_url, notice: 'Link was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:topic, :user_id, :subject_id, :url)
    end
end

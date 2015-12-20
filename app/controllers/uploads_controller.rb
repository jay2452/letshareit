class UploadsController < ApplicationController
  impressionist :unique => [:controller_name, :action_name, :session_hash]
  before_action :set_upload, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]
  # GET /uploads
  # GET /uploads.json
  def index
    #@uploads = Upload.all.order(created_at: :desc)
    @uploads = Upload.paginate(:page => params[:page], :per_page => 20).order(created_at: :desc)
    @links = Link.all.order(created_at: :desc)
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
  end

  # GET /uploads/new
  def new
    @upload = current_user.uploads.build
  end

  # GET /uploads/1/edit
  def edit
  end

  # POST /uploads
  # POST /uploads.json
  def create
    puts "*******************************"
    puts ""
    p params
    puts ""
    puts "*******************************"

    @upload = current_user.uploads.build(upload_params)
    respond_to do |format|
      if @upload.save
        format.html { redirect_to root_path, notice: 'Upload was successfully created.' }
        format.json { render :show, status: :created, location: @upload }
      else
        format.html { render :new }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploads/1
  # PATCH/PUT /uploads/1.json
  def update
    respond_to do |format|
      if @upload.update(upload_params)
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @upload }
      else
        format.html { render :edit }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload
      @upload = Upload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upload_params
      params.require(:upload).permit(:topic, :user_id, :subject_id, :file, :approved)
    end
end

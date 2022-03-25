class PhoneDirectoriesController < ApplicationController
  before_action :set_phone_directory, only: %i[ show edit update destroy ]

  # GET /phone_directories or /phone_directories.json
  def index
    @phone_directories = PhoneDirectory.all
  end

  # GET /phone_directories/1 or /phone_directories/1.json
  def show
  end

  # GET /phone_directories/new
  def new
    @phone_directory = PhoneDirectory.new
  end

  # GET /phone_directories/1/edit
  def edit
  end

  # POST /phone_directories or /phone_directories.json
  def create
    @phone_directory = PhoneDirectory.new(phone_directory_params)

    respond_to do |format|
      if @phone_directory.save
        format.html { redirect_to phone_directory_url(@phone_directory), notice: "Phone directory was successfully created." }
        format.json { render :show, status: :created, location: @phone_directory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phone_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_directories/1 or /phone_directories/1.json
  def update
    respond_to do |format|
      if @phone_directory.update(phone_directory_params)
        format.html { redirect_to phone_directory_url(@phone_directory), notice: "Phone directory was successfully updated." }
        format.json { render :show, status: :ok, location: @phone_directory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phone_directory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_directories/1 or /phone_directories/1.json
  def destroy
    @phone_directory.destroy

    respond_to do |format|
      format.html { redirect_to phone_directories_url, notice: "Phone directory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_directory
      @phone_directory = PhoneDirectory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phone_directory_params
      params.require(:phone_directory).permit(:name, :phone, :email)
    end
end

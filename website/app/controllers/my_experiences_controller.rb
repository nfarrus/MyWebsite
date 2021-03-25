class MyExperiencesController < ApplicationController
  before_action :set_my_experience, only: %i[ show edit update destroy ]

  # GET /my_experiences or /my_experiences.json
  def index
    @my_experiences = MyExperience.all
  end

  # GET /my_experiences/1 or /my_experiences/1.json
  def show
  end

  # GET /my_experiences/new
  def new
    @my_experience = MyExperience.new
  end

  # GET /my_experiences/1/edit
  def edit
  end

  # POST /my_experiences or /my_experiences.json
  def create
    @my_experience = MyExperience.new(my_experience_params)

    respond_to do |format|
      if @my_experience.save
        format.html { redirect_to @my_experience, notice: "My experience was successfully created." }
        format.json { render :show, status: :created, location: @my_experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_experiences/1 or /my_experiences/1.json
  def update
    respond_to do |format|
      if @my_experience.update(my_experience_params)
        format.html { redirect_to @my_experience, notice: "My experience was successfully updated." }
        format.json { render :show, status: :ok, location: @my_experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_experiences/1 or /my_experiences/1.json
  def destroy
    @my_experience.destroy
    respond_to do |format|
      format.html { redirect_to my_experiences_url, notice: "My experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_experience
      @my_experience = MyExperience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_experience_params
      params.require(:my_experience).permit(:Company, :Role, :Duration, :Location, :Description)
    end
end

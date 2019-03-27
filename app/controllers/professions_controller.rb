class ProfessionsController < ApplicationController
  before_action :set_profession, only: [:show, :update, :destroy]

  # GET /professions
  def index
    @professions = Profession.all

    render json: @professions
  end

  # GET /professions/1
  def show
    render json: @profession
  end

  # POST /professions
  def create
    @profession = Profession.new(profession_params)

    if @profession.save
      render json: @profession, status: :created, location: @profession
    else
      render json: @profession.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /professions/1
  def update
    if @profession.update(profession_params)
      render json: @profession
    else
      render json: @profession.errors, status: :unprocessable_entity
    end
  end

  # DELETE /professions/1
  def destroy
    @profession.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profession
      @profession = Profession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profession_params
      params.require(:profession).permit(:name, :user_id)
    end
end

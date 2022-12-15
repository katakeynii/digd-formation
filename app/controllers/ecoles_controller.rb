class EcolesController < ApplicationController
  before_action :set_ecole, only: %i[ show edit update destroy ]

  # GET /ecoles or /ecoles.json
  def index
    @ecoles = Ecole.all
  end

  # GET /ecoles/1 or /ecoles/1.json
  def show
  end

  # GET /ecoles/new
  def new
    @ecole = Ecole.new
  end

  # GET /ecoles/1/edit
  def edit
  end

  # POST /ecoles or /ecoles.json
  def create
    @ecole = Ecole.new(ecole_params)

    respond_to do |format|
      if @ecole.save
        format.html { redirect_to ecole_url(@ecole), notice: "Ecole was successfully created." }
        format.json { render :show, status: :created, location: @ecole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ecole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecoles/1 or /ecoles/1.json
  def update
    respond_to do |format|
      if @ecole.update(ecole_params)
        format.html { redirect_to ecole_url(@ecole), notice: "Ecole was successfully updated." }
        format.json { render :show, status: :ok, location: @ecole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ecole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecoles/1 or /ecoles/1.json
  def destroy
    @ecole.destroy

    respond_to do |format|
      format.html { redirect_to ecoles_url, notice: "Ecole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecole
      @ecole = Ecole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecole_params
      params.require(:ecole).permit(:nom, :adresse, :type, :telephone, :ouvert)
    end
end

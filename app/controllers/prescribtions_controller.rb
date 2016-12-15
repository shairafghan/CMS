class PrescribtionsController < ApplicationController
  before_action :set_prescribtion, only: [:show, :edit, :update, :destroy]

  # GET /prescribtions
  # GET /prescribtions.json
  def index
    @prescribtions = Prescribtion.all
  end

  # GET /prescribtions/1
  # GET /prescribtions/1.json
  def show
  end

  # GET /prescribtions/new
  def new
    @prescribtion = Prescribtion.new
  end

  # GET /prescribtions/1/edit
  def edit
  end

  # POST /prescribtions
  # POST /prescribtions.json
  def create
    @prescribtion = Prescribtion.new(prescribtion_params)

    respond_to do |format|
      if @prescribtion.save
        format.html { redirect_to @prescribtion, notice: 'Prescribtion was successfully created.' }
        format.json { render :show, status: :created, location: @prescribtion }
      else
        format.html { render :new }
        format.json { render json: @prescribtion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescribtions/1
  # PATCH/PUT /prescribtions/1.json
  def update
    respond_to do |format|
      if @prescribtion.update(prescribtion_params)
        format.html { redirect_to @prescribtion, notice: 'Prescribtion was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescribtion }
      else
        format.html { render :edit }
        format.json { render json: @prescribtion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescribtions/1
  # DELETE /prescribtions/1.json
  def destroy
    @prescribtion.destroy
    respond_to do |format|
      format.html { redirect_to prescribtions_url, notice: 'Prescribtion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescribtion
      @prescribtion = Prescribtion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescribtion_params
      params.require(:prescribtion).permit(:patient_id, :doctor_id)
    end
end

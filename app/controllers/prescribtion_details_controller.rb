class PrescribtionDetailsController < ApplicationController
  before_action :set_prescribtion_detail, only: [:show, :edit, :update, :destroy]

  # GET /prescribtion_details
  # GET /prescribtion_details.json
  def index
    @prescribtion_details = PrescribtionDetail.all
  end

  # GET /prescribtion_details/1
  # GET /prescribtion_details/1.json
  def show
  end

  # GET /prescribtion_details/new
  def new
    @prescribtion_detail = PrescribtionDetail.new
  end

  # GET /prescribtion_details/1/edit
  def edit
  end

  # POST /prescribtion_details
  # POST /prescribtion_details.json
  def create
    @prescribtion_detail = PrescribtionDetail.new(prescribtion_detail_params)

    respond_to do |format|
      if @prescribtion_detail.save
        format.html { redirect_to @prescribtion_detail, notice: 'Prescribtion detail was successfully created.' }
        format.json { render :show, status: :created, location: @prescribtion_detail }
      else
        format.html { render :new }
        format.json { render json: @prescribtion_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescribtion_details/1
  # PATCH/PUT /prescribtion_details/1.json
  def update
    respond_to do |format|
      if @prescribtion_detail.update(prescribtion_detail_params)
        format.html { redirect_to @prescribtion_detail, notice: 'Prescribtion detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescribtion_detail }
      else
        format.html { render :edit }
        format.json { render json: @prescribtion_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescribtion_details/1
  # DELETE /prescribtion_details/1.json
  def destroy
    @prescribtion_detail.destroy
    respond_to do |format|
      format.html { redirect_to prescribtion_details_url, notice: 'Prescribtion detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescribtion_detail
      @prescribtion_detail = PrescribtionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescribtion_detail_params
      params.require(:prescribtion_detail).permit(:prescribtion_id, :medication_id, :dosage, :duration)
    end
end

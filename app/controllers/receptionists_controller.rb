class ReceptionistsController < ApplicationController
  before_action :set_receptionist, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_receptionist_method, only: [:edit, :update, :destroy]
  before_action :correct_receptionist, only: [:edit, :update, :destroy]

  # GET /receptionists
  # GET /receptionists.json
  def index
    @receptionists = Receptionist.all
  end

  # GET /receptionists/1
  # GET /receptionists/1.json
  def show
  end

  # GET /receptionists/new
  def new
    @receptionist = Receptionist.new
  end

  # GET /receptionists/1/edit
  def edit
  end

  # POST /receptionists
  # POST /receptionists.json
  def create
    @receptionist = Receptionist.new(receptionist_params)

    respond_to do |format|
      if @receptionist.save
        format.html { redirect_to @receptionist, notice: 'Receptionist was successfully created.' }
        format.json { render :show, status: :created, location: @receptionist }
      else
        format.html { render :new }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receptionists/1
  # PATCH/PUT /receptionists/1.json
  def update
    respond_to do |format|
      if @receptionist.update(receptionist_params)
        format.html { redirect_to @receptionist, notice: 'Receptionist was successfully updated.' }
        format.json { render :show, status: :ok, location: @receptionist }
      else
        format.html { render :edit }
        format.json { render json: @receptionist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receptionists/1
  # DELETE /receptionists/1.json
  def destroy
    @receptionist.destroy
    respond_to do |format|
      format.html { redirect_to receptionists_url, notice: 'Receptionist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receptionist
      @receptionist = Receptionist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receptionist_params
      params.require(:receptionist).permit(:rec_name, :email,:password,
      :password_confirmation)
    end

    def logged_in_receptionist_method
      unless logged_in_receptionist?
        flash[:danger] = "Please log in."
        redirect_to login_receptionist_url
      end
    end

    def correct_receptionist
      @receptionist = Receptionist.find(params[:id])
      # redirect_to(root_url) unless current_user?(@user)
      redirect_to(root_url) unless @receptionist == current_receptionist
    end
end

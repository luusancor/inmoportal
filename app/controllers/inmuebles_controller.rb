class InmueblesController < ApplicationController
  before_action :set_inmueble, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /inmuebles or /inmuebles.json
  def index
    @inmuebles = Inmueble.all
  end

  # GET /inmuebles/1 or /inmuebles/1.json
  def show
  end

  # GET /inmuebles/new
  def new
    #@inmueble = Inmueble.new
    @inmueble = current_user.inmuebles.build
  end

  # GET /inmuebles/1/edit
  def edit
  end

  # POST /inmuebles or /inmuebles.json
  def create
    #@inmueble = Inmueble.new(inmueble_params)
    @inmueble = current_user.inmuebles.build(inmueble_params)
    respond_to do |format|
      if @inmueble.save
        format.html { redirect_to inmueble_url(@inmueble), notice: "Inmueble was successfully created." }
        format.json { render :show, status: :created, location: @inmueble }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inmuebles/1 or /inmuebles/1.json
  def update
    respond_to do |format|
      if @inmueble.update(inmueble_params)
        format.html { redirect_to inmueble_url(@inmueble), notice: "Inmueble was successfully updated." }
        format.json { render :show, status: :ok, location: @inmueble }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inmuebles/1 or /inmuebles/1.json
  def destroy
    @inmueble.destroy

    respond_to do |format|
      format.html { redirect_to inmuebles_url, notice: "Inmueble was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @inmueble = current_user.inmuebles.find_by(id: params[:id])
    redirect_to inmuebles_path, notice: "Not authorized" if @inmueble.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inmueble
      @inmueble = Inmueble.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inmueble_params
      params.require(:inmueble).permit(:address, :price, :rooms, :bathrooms, :area, :description, :user_id)
    end
end

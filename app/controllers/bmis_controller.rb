class BmisController < ApplicationController
  before_action :set_bmi, only: [:show, :edit, :update, :destroy]

  # GET /bmis
  # GET /bmis.json
  def index
    @bmis = Bmi.all
  end

  # GET /bmis/1
  # GET /bmis/1.json
  def show
  end

  # GET /bmis/new
  def new
    @bmi = Bmi.new
  end

  # GET /bmis/1/edit
  def edit
  end

  # POST /bmis
  # POST /bmis.json
  def create
    @bmi = Bmi.new(bmi_params)

    respond_to do |format|
      if @bmi.save
        format.html { redirect_to @bmi, notice: 'Bmi was successfully created.' }
        format.json { render :show, status: :created, location: @bmi }
      else
        format.html { render :new }
        format.json { render json: @bmi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bmis/1
  # PATCH/PUT /bmis/1.json
  def update
    respond_to do |format|
      if @bmi.update(bmi_params)
        format.html { redirect_to @bmi, notice: 'Bmi was successfully updated.' }
        format.json { render :show, status: :ok, location: @bmi }
      else
        format.html { render :edit }
        format.json { render json: @bmi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bmis/1
  # DELETE /bmis/1.json
  def destroy
    @bmi.destroy
    respond_to do |format|
      format.html { redirect_to bmis_url, notice: 'Bmi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmi
      @bmi = Bmi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bmi_params
      params.require(:bmi).permit(:name, :height, :weight)
    end
end

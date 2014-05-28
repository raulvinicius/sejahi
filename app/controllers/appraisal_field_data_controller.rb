class AppraisalFieldDataController < ApplicationController
  before_action :set_appraisal_field_datum, only: [:show, :edit, :update, :destroy]

  # GET /appraisal_field_data
  # GET /appraisal_field_data.json
  def index
    @appraisal_field_data = AppraisalFieldDatum.all
  end

  # GET /appraisal_field_data/1
  # GET /appraisal_field_data/1.json
  def show
  end

  # GET /appraisal_field_data/new
  def new
    @appraisal_field_datum = AppraisalFieldDatum.new
  end

  # GET /appraisal_field_data/1/edit
  def edit
  end

  # POST /appraisal_field_data
  # POST /appraisal_field_data.json
  def create
    @appraisal_field_datum = AppraisalFieldDatum.new(appraisal_field_datum_params)

    respond_to do |format|
      if @appraisal_field_datum.save
        format.html { redirect_to @appraisal_field_datum, notice: 'Appraisal field datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @appraisal_field_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @appraisal_field_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appraisal_field_data/1
  # PATCH/PUT /appraisal_field_data/1.json
  def update
    respond_to do |format|
      if @appraisal_field_datum.update(appraisal_field_datum_params)
        format.html { redirect_to @appraisal_field_datum, notice: 'Appraisal field datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @appraisal_field_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appraisal_field_data/1
  # DELETE /appraisal_field_data/1.json
  def destroy
    @appraisal_field_datum.destroy
    respond_to do |format|
      format.html { redirect_to appraisal_field_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appraisal_field_datum
      @appraisal_field_datum = AppraisalFieldDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appraisal_field_datum_params
      params.require(:appraisal_field_datum).permit(:data)
    end
end

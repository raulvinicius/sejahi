class AppraisalFieldsController < ApplicationController
  before_action :set_appraisal_field, only: [:show, :edit, :update, :destroy]

  # GET /appraisal_fields
  # GET /appraisal_fields.json
  def index
    @appraisal_fields = AppraisalField.all
  end

  # GET /appraisal_fields/1
  # GET /appraisal_fields/1.json
  def show
  end

  # GET /appraisal_fields/new
  def new
    @appraisal_field = AppraisalField.new
  end

  # GET /appraisal_fields/1/edit
  def edit
  end

  # POST /appraisal_fields
  # POST /appraisal_fields.json
  def create
    @appraisal_field = AppraisalField.new(appraisal_field_params)

    respond_to do |format|
      if @appraisal_field.save
        format.html { redirect_to @appraisal_field, notice: 'Appraisal field was successfully created.' }
        format.json { render action: 'show', status: :created, location: @appraisal_field }
      else
        format.html { render action: 'new' }
        format.json { render json: @appraisal_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appraisal_fields/1
  # PATCH/PUT /appraisal_fields/1.json
  def update
    respond_to do |format|
      if @appraisal_field.update(appraisal_field_params)
        format.html { redirect_to @appraisal_field, notice: 'Appraisal field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @appraisal_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appraisal_fields/1
  # DELETE /appraisal_fields/1.json
  def destroy
    @appraisal_field.destroy
    respond_to do |format|
      format.html { redirect_to appraisal_fields_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appraisal_field
      @appraisal_field = AppraisalField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appraisal_field_params
      params.require(:appraisal_field).permit(:name, :type, :hint)
    end
end

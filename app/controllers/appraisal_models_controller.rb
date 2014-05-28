class AppraisalModelsController < ApplicationController
  before_action :set_appraisal_model, only: [:show, :edit, :update, :destroy]

  # GET /appraisal_models
  # GET /appraisal_models.json
  def index
    @appraisal_models = AppraisalModel.all
  end

  # GET /appraisal_models/1
  # GET /appraisal_models/1.json
  def show
  end

  # GET /appraisal_models/new
  def new
    @appraisal_model = AppraisalModel.new
  end

  # GET /appraisal_models/1/edit
  def edit
  end

  # POST /appraisal_models
  # POST /appraisal_models.json
  def create
    @appraisal_model = AppraisalModel.new(appraisal_model_params)

    respond_to do |format|
      if @appraisal_model.save
        format.html { redirect_to @appraisal_model, notice: 'Appraisal model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @appraisal_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @appraisal_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appraisal_models/1
  # PATCH/PUT /appraisal_models/1.json
  def update
    respond_to do |format|
      if @appraisal_model.update(appraisal_model_params)
        format.html { redirect_to @appraisal_model, notice: 'Appraisal model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @appraisal_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appraisal_models/1
  # DELETE /appraisal_models/1.json
  def destroy
    @appraisal_model.destroy
    respond_to do |format|
      format.html { redirect_to appraisal_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appraisal_model
      @appraisal_model = AppraisalModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appraisal_model_params
      params.require(:appraisal_model).permit(:name)
    end
end

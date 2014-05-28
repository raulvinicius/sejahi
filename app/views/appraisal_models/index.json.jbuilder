json.array!(@appraisal_models) do |appraisal_model|
  json.extract! appraisal_model, :id, :name
  json.url appraisal_model_url(appraisal_model, format: :json)
end

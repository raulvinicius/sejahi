json.array!(@appraisal_fields) do |appraisal_field|
  json.extract! appraisal_field, :id, :name, :type, :hint
  json.url appraisal_field_url(appraisal_field, format: :json)
end

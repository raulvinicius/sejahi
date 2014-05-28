json.array!(@appraisal_field_types) do |appraisal_field_type|
  json.extract! appraisal_field_type, :id, :name, :html
  json.url appraisal_field_type_url(appraisal_field_type, format: :json)
end

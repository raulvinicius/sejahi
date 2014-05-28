json.array!(@appraisal_field_data) do |appraisal_field_datum|
  json.extract! appraisal_field_datum, :id, :data
  json.url appraisal_field_datum_url(appraisal_field_datum, format: :json)
end

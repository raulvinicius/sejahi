json.array!(@appraisals) do |appraisal|
  json.extract! appraisal, :id
  json.url appraisal_url(appraisal, format: :json)
end

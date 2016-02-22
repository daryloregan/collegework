json.array!(@employers) do |employer|
  json.extract! employer, :id, :first_name, :last_name, :email, :password_digest, :company_name, :location, :industry, :link_to_website
  json.url employer_url(employer, format: :json)
end

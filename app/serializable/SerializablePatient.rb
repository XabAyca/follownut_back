class SerializablePatient < JSONAPI::Serializable::Resource
  type 'patients'

  attributes :email, :first_name, :last_name

  link :self do
    @url_helpers.api_v1_patient_url(@object.id)
  end
end
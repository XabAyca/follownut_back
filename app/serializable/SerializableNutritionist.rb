class SerializableNutritionist < JSONAPI::Serializable::Resource
  type 'nutritionists'

  attributes :email, :first_name, :last_name, :slug_calendly, :avatar, :phone_number

  link :self do
    @url_helpers.api_v1_nutritionist_url(@object.id)
  end
end
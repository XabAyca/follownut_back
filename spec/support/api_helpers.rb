module ApiHelpers

  def json
    JSON.parse(response.body)
  end

  def login_patient_with_api(patient)
    post '/api/patient/login', params: {
      patient: {
        email: patient.email,
        password: patient.password
      }
    }
  end

  def login_nutritionist_with_api(nutritionist)
    post '/api/nutritionist/login', params: {
      nutritionist: {
        email: nutritionist.email,
        password: nutritionist.password
      }
    }
  end

end

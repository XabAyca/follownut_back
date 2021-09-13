class PatientPasswordsController < ApplicationController

    def forgot
    if params[:email].blank? # check if email is present
      return render json: {error: 'Email non présent'}
    end

    @patient = Patient.find_by(email: params[:email]) # if present find patient by email

    if @patient.present?
      @patient.generate_password_token! #generate pass token
      # SEND EMAIL HERE
      render json: {status: 'ok'}, status: :ok
    else
      render json: {error: ['Email non trouvé. Vérifiez puis recommencez']}, status: :not_found
    end
  end

  def reset
    token = params[:token].to_s

    if params[:email].blank?
      return render json: {error: 'Token non présent'}
    end

    patient = Patient.find_by(reset_password_token: token)

    if patient.present? && patient.password_token_valid?
      if patient.reset_password!(params[:password])
        render json: {status: 'ok'}, status: :ok
      else
        render json: {error: patient.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {error:  ['Lien invalide ou expiré. Regénerez un nouveau lien.']}, status: :not_found
    end
  end

end
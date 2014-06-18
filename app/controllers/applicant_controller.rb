class ApplicantController < ApplicationController

  def update
    @applicant = current_applicant
    @applicant.update_attributes(params[:applicant])

    respond_to do |format|
      format.html { redirect_to form_path }
      format.js { render action: "refresh_form" }
    end
  end

end

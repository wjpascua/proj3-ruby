class CreateSurveysController < ApplicationController
  def createSurvey
    sn = params[:survey_name]
    q1 = params[:q1]
    q2 = params[:q2]
    q3 = params[:q3]
    q4 = params[:q4]
    q5 = params[:q5]
    conn = ActiveRecord::Base.connection
    conn.execute("select addSurvey('" + sn + "','" + q1 + "','" + q2 + "','" + q3 + "','" + q4 + "','" + q5 + "')")
  end
end

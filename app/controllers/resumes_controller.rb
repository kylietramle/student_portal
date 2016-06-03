class ResumesController < ApplicationController

  def show
    @resume = Unirest.get("#{ENV['DOMAIN']}/resumes/#{params[:student_id]}.json").body
  end
end
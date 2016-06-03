class ResumesController < ApplicationController
  def index
    @resumes = Unirest.get("#{ENV['API']}.json", headers:{"Accept" => "application/json"}).body
  end

  def edit
    @resume = Unirest.get("#{ENV['DOMAIN']}/resumes/#{id}.json").body
  end

  def update
    Unirest.patch("#{ENV['DOMAIN']}/resumes/#{id}.json", headers: {"Accept" => "application/json", parameters: {experience_id: params[:experience_id],education_id: params[:education_id],capstone_id: params[:capstone_id],first_name: params[:first_name],last_name: params[:last_name],email: params[:email],password: params[:password],phone_number: params[:phone_number],short_bio: params[:short_bio],linkedin_url: params[:linkedin_url],twitter_handle: params[:twitter_handle],wordpress_url: params[:wordpress_url],resume_url: params[:resume_url],github_url: params[:github_url],photo: params[:photo]}).body
  end

end

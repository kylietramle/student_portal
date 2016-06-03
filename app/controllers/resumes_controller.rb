class ResumesController < ApplicationController
  def index
    @resumes = Unirest.get("#{ENV['API']}.json", headers:{"Accept" => "application/json"}).body
  end
end

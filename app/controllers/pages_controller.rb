class PagesController < ApplicationController
  def home
  end

  def search
    @results = Course.search(params)
  end

  def results
    @results = Course.search(params)
  end

  def enroll
    @course_name = params[:course_name]
    Course.enrollment(params)
  end
end

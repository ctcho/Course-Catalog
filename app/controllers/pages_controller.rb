class PagesController < ApplicationController
  def home
  end

  def search
  end

  def results
    @results = Course.search(params)
  end

  def enroll
    Course.enrollment(params)
  end
end

class PagesController < ApplicationController
  def home
  	@blogs = Blog.order("created_at desc").limit(3)
  end

  def about
  end
end

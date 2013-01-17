class UrlsController < ApplicationController
  def new
  	@new_url = Url.new
  end
end

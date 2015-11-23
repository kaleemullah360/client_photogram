class HomeController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def index
    @page = params[:page]
    @per_page = params[:per_page]
    if !@page and !@per_page
      @page =1 and @per_page =2
    end
    require 'net/http'
    uri = URI("http://localhost:3000/api/images?page=#{@page}&per_page=#{@per_page}")

    res = Net::HTTP.get(uri)
    @data = JSON.parse(res)
     # render text: res['data'] and return
    
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

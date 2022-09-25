class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def new
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end
end

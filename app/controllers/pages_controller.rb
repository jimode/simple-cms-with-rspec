class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  
  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
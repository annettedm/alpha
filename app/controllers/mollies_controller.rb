class MolliesController < ApplicationController
  def show
    @molly = Molly.find(params[:id])
  end

  def new
    @molly = Molly.new
  end

  def create
    @molly = Molly.new(molly_params)
    @molly.save
    redirect_to mollies_path
  end

  def index
    @mollies = Molly.all
  end

  private

  def molly_params
    params.expect(molly: [:name, :description])
  end
end

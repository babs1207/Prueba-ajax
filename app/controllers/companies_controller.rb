class CompaniesController < ApplicationController
  
  def index
    @company = Company.new
    @companies = Company.all 
  end

  def create
    @company = Company.new(name: params[:company][:name])
    @company.user = current_user
    @company.save 
    respond_to :js
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    respond_to :js
  end

  def edit 
    @company = Company.find(params[:id])
    respond_to :js
  end
end
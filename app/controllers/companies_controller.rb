class CompaniesController < ApplicationController
  
  def index
    @company = Company.new
    @companies = Company.all 
  end

  def show
    @company = Company.find(params[:id]) 
    @claim = Claim.new
    respond_to :js
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

  def update
    @company = Company.find(params[:id])
    @company.name = params[:company][:name]
    @company.save
    respond_to :js
  end
end

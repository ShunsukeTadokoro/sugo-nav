class CompaniesController < ApplicationController
	before_action :set_company, only: [:show, :edit, :update, :destroy]


	def index
		@companies = Company.all
	end

	def show
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :email, :email_for_index, :hashed_password, :image_url, :image_url)
    end

end

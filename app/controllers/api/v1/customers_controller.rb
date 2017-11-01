class Api::V1::CustomersController < Api::V1::BaseController
	def index
		respond_with Customer.all
	end
	def create
		respond_with :Api, :V1, Customer.create(customerParams)
	end

	def update
		customer = Customer.find(params["id"])
		customer.updates_attributes(customerParams)
		respond_with customer, json: customer
	end

	def destroy
		respond_with Customer.destroy(params[:id])
	end

	private
	def customerParams
		params.require(:customer).permit(:id, :name, :bio, :deposit)		
	end
end
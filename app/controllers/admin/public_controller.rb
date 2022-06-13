class Admin::PublicController < ApplicationController
  def index
    @customers = Customer.all
  end

  def edit
    @public = Customer.find(params[:id])
  end

  def update
    @public = Customer.find(params[:id])
    @public.update(customer_params)
    redirect_to admin_public_index_path
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name)
  end
end

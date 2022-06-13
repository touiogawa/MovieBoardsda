class Public::PublicsController < ApplicationController
  def show
  end

  def edit
    @public = Customer.find(current_customer.id)
  end

  def update
    @public = Customer.find(current_customer.id)
    @public.update(customer_params)
    redirect_to public_path(current_customer.id)
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name)
  end
end

class Public::HomesController < ApplicationController
  def top
  end

  def unsubscribe
    @customer = Customer.find_by(id: params[:id])
  end

  def withdraw
    @customer = Customer.find_by(id: params[:id])
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name)
  end
end

class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:adminpanel]

  def home
    if current_user
      redirect_to items_path
    end
    @items =Item.last(10)
  end

  def adminpanel
    @items = current_user.items
    @purchased = Sale.where(buyer_email: current_user.email)
    @sales = Sale.where(seller_email: current_user.email)

  end
end

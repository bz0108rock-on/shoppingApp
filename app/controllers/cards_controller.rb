class CardsController < ApplicationController
  def index
  end

  def new
    @card = Card.new
  end

  def create
    Payjp.api_key=  Rails.application.credentials[:payjp][:secret_key]
    customer = Payjp::Customer.create(
      description: 'test',
      card: params['payjp-token']
      )
    @card= Card.new(user_id: current_user.id, customer_id: customer.id)
      if @card.save
        redirect_to root_path
      else
        render :new
      end
  end


end

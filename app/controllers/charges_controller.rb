class ChargesController < ApplicationController
    def new
    end
    
    def create
      # Amount in cents

      @flyer = Flyer.find(params[:flyer_id])
      @amount = @flyer.cost.to_i*100
      new_join = FlyerAttendedByUser.new 
      new_join.user_id = current_user.id 
      new_join.flyer_id = @flyer.id
      new_join.save!
      
      
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'aud',
      })
    
    rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    end

end

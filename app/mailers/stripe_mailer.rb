class StripeMailer < ApplicationMailer

  def admin_disput_created(charge)
    @charge = charge
    @sale = Sale.find_by(stripe_id: @charge.id)
    if @sale
      mail(to: 'you@example.com', subject: "Dispute created on charge #{@sale.guid} (#{charge.id})").deliver
    end
  end

  def admin_charge_succeeded(charge)
    @charge = charge
    mail(to: 'you@example.com', subject: 'Woo! Charge Succeeded!')
  end

  def receipt(charge)
    @charge = charge
    @sale = Sale.find_by!(stripe_id: @charge.id)
    mail(to: @sale.email, subject: "Thanks for purchasing #{@sale.product.name}")
  end
end

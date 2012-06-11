class SandwichOrderMailer < ActionMailer::Base
  default from: "contact@uncoil.me"
  
  def order_email(order)
    @sandwich_order = order
    mail(:to => order.sandwich_maker, :subject => "Sandwich Order from #{order.ordering_person}" )
  end
end

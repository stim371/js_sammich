class SandwichOrderMailer < ActionMailer::Base
  default from: CREDENTIALS["username"]
  
  def sandwich_order_email(order)
    @sandwich_order = order
    @quote = Quote.random.html_safe
    mail(:to => order.sandwich_maker, :subject => "Sandwich Order from #{order.ordering_person}" )
  end
end

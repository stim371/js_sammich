class DevelopmentMailInterceptor  
  def self.delivering_email(message)  
    message.subject = "[#{message.to}] #{message.subject}"
    message.to = "stimsojr@gmail.com"  
  end  
end
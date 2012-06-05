module ApplicationHelper
  def alert_class key
    div_class = case key.to_s
    when "notice" || "success"
      "alert-success"
    when "error" || "warning"
      "alert-error"
    else
      "alert-info"
    end
    div_class
  end
  
  def this_year
    Time.now.year
  end
end

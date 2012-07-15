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
  
  def google_analytics_js
    content_tag(:script, :type => 'text/javascript') do
        "var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-33387644-1']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();"
    end if Rails.env.production?
  end
  
  
end

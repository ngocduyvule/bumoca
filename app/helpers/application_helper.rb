module ApplicationHelper
  
  def quote_string(v)
    v.to_s.gsub(/\\/, '\&\&').gsub(/'/, "\\'")
  end
end

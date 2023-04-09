module ApplicationHelper

  def date_day_month_year(date)
    date.strftime("%B %d, %Y") 
  end
end

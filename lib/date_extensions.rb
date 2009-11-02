class Date
  
  def to_next_business_day
    return Date.to_next_business_day(self)
  end
  
  def self.to_next_business_day(date)
    if date.is_holiday? || date.is_weekend?
      date += 1
      return date.to_next_business_day
    else
      return date
    end
  end
  
  def is_holiday?
    [ "11/11/2009",
      "11/29/2009",
      "12/25/2009",
      "01/01/2010",
      "01/18/2010",
      "02/15/2010",
      "05/31/2010",
      "07/04/2010",
      "07/05/2010",
      "09/06/2010",
      "10/11/2010",
      "11/11/2010",
      "11/25/2010",
      "12/24/2010",
      "12/25/2010" ].include? self.strftime("%m/%d/%Y")  
  end

  def is_weekend?
    [0, 6].include? self.wday
  end
  
end
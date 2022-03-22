#!/usr/bin/env ruby

require "holiday_jp"

private def today
  t = Date.today.to_time
  [t.year, t.month, t.day]
end

def is_not_holiday
  year, month, day = today
  if HolidayJp.holiday?(Date.new(year, month, day))
    exit(1)
  else
    exit(0)
  end
end

is_not_holiday

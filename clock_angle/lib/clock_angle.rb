class String
  def clock_angle
    hour = split(":")[0].to_f
    minute = split(":")[1].to_f
    hour_angle = ((hour/12)*360)+((minute/60)*(360/12))
    minute_angle = (minute/60)*360
    difference = (hour_angle-minute_angle).abs
    if difference > 180
      360 - difference
    else
      difference
    end
  end
end

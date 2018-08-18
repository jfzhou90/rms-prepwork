class String
  def clock_angle
    hour = split(":")[0].to_f
    minute = split(":")[1].to_f
    hour_angle = ((hour/12)*360)+((minute/60)*(360/12))
    minute_angle = (minute/60)*360
    distance = (hour_angle-minute_angle).abs
    if distance > 180
      360 - distance
    else
      distance
    end
  end
end

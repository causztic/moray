json.catches @specimen.each do |specimen|
  json.merge! specimen.attributes
end
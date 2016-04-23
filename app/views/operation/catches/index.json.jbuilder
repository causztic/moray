json.catches @catches.each do |catch|
  json.merge! catch.attributes
end
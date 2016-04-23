json.operation do
  json.merge! @operation.attributes
  
  json.catches(@catches) do |catch|
    json.merge! catch.attributes

    json.environment do
      json.merge! catch.environment.attributes
    end
    
    json.specimen(catch.specimen) do |s|
      json.merge! s.attributes
    end

  end

end
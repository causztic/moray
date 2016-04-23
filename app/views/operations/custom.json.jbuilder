json.operation do
  json.merge! @operation.attributes
  
  json.catches(@catches) do |catch|
    json.merge! catch.attributes

    if @operation.nature == "scientific"
      json.environment do
        json.merge! catch.environment.attributes
      end
      
      json.specimen(catch.specimen) do |s|
        json.merge! s.attributes
      end
    end

  end

end
class DataController < ApplicationController

  def new
    operation = Operation.new(operation_params)
    operation.save!
  end

  def operation_params
    params.require(:operation).permit!
  end

end

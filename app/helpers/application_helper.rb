module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | KendoGva"      
    end
  end
end

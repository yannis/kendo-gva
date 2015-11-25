module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | KendoGva"
    end
  end

  def startdate_helper(startdate)
    if @startdate
      "La prochaine aura lieu le <strong>#{l @startdate, format: :long}</strong>.".html_safe
    else
      "Il n'y a pour l'instant pas de dat prévue poru la prochaine rentrée."
    end
  end
end

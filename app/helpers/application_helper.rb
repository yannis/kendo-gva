module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | KendoGva"
    end
  end

  def startdate_helper(startdate)
    if startdate
      "La prochaine aura lieu le <strong>#{l startdate.start_on, format: :long}</strong>.".html_safe
    else
      "Il n'y a pour l'instant pas de date prévue poru la prochaine rentrée."
    end
  end
end

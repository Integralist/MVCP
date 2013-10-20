module ApplicationHelper
  def title (value = nil)
    @title = value if value
    @title ? "#{@title} - Integralist: BBC News Engineer" : "Integralist: BBC News Engineer"
  end

  def partial (template, locals = {})
    erb(template, :layout => false, :locals => locals)
  end
end

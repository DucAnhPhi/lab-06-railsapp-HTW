module ApplicationHelper

  def sortFunction(column, attributeToSort)
    direction = column == @sortColumn && @sortDirection == "asc" ? "desc" : "asc"
    link_to attributeToSort, {:sort => column, :direction => direction}

  end

end

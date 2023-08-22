class Task < ApplicationRecord

  def laundry?
    if title == "laundry" || description == "laundry"
      return true
    else
      return false
    end
  end

  def contains_laundry?
    lower_title = title.downcase
    lower_description = description.downcase
    if lower_title.include? "laundry"
      return true
    elsif lower_description.include? "laundry"
      return true
    else
      return false
    end
  end
end
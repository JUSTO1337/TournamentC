module ApplicationHelper
  # Returns the full title on a per-page basis.
<<<<<<< HEAD
def full_title(page_title)
base_title = "TCreator"
if page_title.empty?
base_title
else
"#{base_title} | #{page_title}"
end
end
=======
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
>>>>>>> 2b8dbfa4c988c31ac9cbc64eb779280f6f8a5386

end

module ApplicationHelper
  # ページごとのタイトル
  def full_title(page_title = '')
    base_title = "Construction Blog"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

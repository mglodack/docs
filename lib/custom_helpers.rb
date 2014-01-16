module CustomHelpers
  def grouped_articles
    sitemap.resources.find_all{|p| p.source_file.match(/articles\/.*\.html/)}.group_by{|p| replace_with_whitespace p.path.split('/')[1]}
  end

  def article_title article
    article.data.title || replace_with_whitespace(article.path.split('/').last.gsub '.html', '' )
  end

  def replace_with_whitespace string
    string.gsub(/[-_]/, ' ')
  end

  def category_to_title category
    category.gsub(/[-_]/, ' ')
  end

  def to_id string
    string.gsub(/[-_]/, '_').downcase
  end

  def list_item_for_category category
    category_container = Array.new
    category_pages = Array.new

    category_container << link_to(category, category_path(category))

    sitemap.where(category: category).all.each_with_index do |article, i|
      category_pages << "<li>#{link_to article_title(article), article}</li>"
    end

    category_container << "<ul>" + category_pages.join(" ") + "</ul>"
    return "<li>" + category_container.join(" ") + "</li>"
  end

  # create an <ul> list with links to all the parent pages down to the root
  def trail_nav
    p = current_page
    res=Array.new
    res << "<li>#{link_to article_title(p), p}</li>"
    while p=p.parent
      res << "<li>#{link_to article_title(p), p }</li>"
    end
    return "<ol class='breadcrumb'>" + res.reverse.join(" ") + "</ol>"
  end
end

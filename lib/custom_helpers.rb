module CustomHelpers
  def grouped_articles
    sitemap.resources.find_all{|p| p.source_file.match(/articles\/.*\.html/)}.group_by{|p| replace_with_whitespace p.path.split('/')[1]}
  end

  def articles_for group
    sitemap.resources.find_all{|p| p.source_file.match(/articles\/.*\.html/)}.group_by{|p| replace_with_whitespace p.path.split('/')[1]}
  end

  def article_title article
    article.data.title || replace_with_whitespace(article.path.split('/').last.gsub '.html', '' )
  end

  def replace_with_whitespace string
    string.gsub(/[-_]/, ' ')
  end

  def to_id string
    string.gsub(/[-_]/, '_').downcase
  end

  # create an <ul> list with links to all the parent pages down to the root
  def trail_nav
    p = current_page
    res=Array.new
    res << "<li>#{link_to article_title(p), p.path}</li>"
    while p=p.parent
      res << "<li>#{link_to article_title(p), p.path }</li>"
    end
    return "<ol class='breadcrumb'>" + res.reverse.join(" ") + "</ol>"
  end
end

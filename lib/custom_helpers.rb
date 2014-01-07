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
end

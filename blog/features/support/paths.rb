module NavigationHelpers

  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /new (.*) page/
      send("new_#{$1}_path")
    when /edit article path for the article titled "(.*)"/
      article = Article.find_by_title!($1)
      send("edit_article_path", article)
    when /edit (.*) path/
      send("edit_#{$1}_path")
    when /the articles index page/
      articles_path
    when /the article show page for the article titled "(.*)"/
      article = Article.find_by_title!($1)
      send("article_path", article)
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)

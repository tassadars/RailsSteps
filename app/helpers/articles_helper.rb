module ArticlesHelper


  def show_edit_del_btns article
    result = link_to ' | Edit', edit_article_path(article) 
    result += link_to ' | Delete', article, data: { :confirm => 'Are you sure?'}, :method => :delete
    result.html_safe
  end

end

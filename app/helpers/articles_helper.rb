module ArticlesHelper


  def show_edit_del_btns article
    if user_signed_in? && article.title == current_user.username
      result = link_to ' | New',  new_article_path  
      result += link_to ' | Edit', edit_article_path(article) 
      result += link_to ' | Delete', article, data: { :confirm => 'Are you sure?'}, :method => :delete
      return result.html_safe
    end
  end
end

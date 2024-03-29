# coding: utf-8
def render_breadcrumb
  breadcrumb = _("You are here: ")

  if controller.controller_name == "articles" and controller.action_name == "index" and !params[:page]
    breadcrumb << this_blog.blog_name
  else
    breadcrumb << link_to(this_blog.blog_name, this_blog.base_url)
  end

  if controller.controller_name == "redirect" and @article
    if @article.categories.first
      breadcrumb << " &gt; "
      breadcrumb << link_to(@article.categories.first.name, @article.categories.first.permalink_url)
    end
    breadcrumb << " &gt; "
    breadcrumb << @article.title
  elsif controller.controller_name == 'tags'
    breadcrumb << " &gt; "
    if params[:id]
      breadcrumb << link_to(_("Tags"), :controller => 'tags')
      mytag = Tag.find_by_name(params[:id])
      breadcrumb << " &gt #{mytag.display_name}"
    else
      breadcrumb << _("Tags")
    end
  elsif controller.controller_name == 'categories'
    breadcrumb << " &gt; "
    if params[:id]
      breadcrumb << link_to(_("Categories"), :controller => "categories")
      mycategory = Category.find_by_permalink(params[:id])
      breadcrumb << " &gt; #{mycategory.display_name}"
    else
      breadcrumb << _("Categories")
    end
  elsif controller.action_name == 'view_page'
    breadcrumb << " &gt; "
    breadcrumb << @page.title
  end

  return breadcrumb
end

def render_active_page(page)
  if controller.action_name == 'view_page'
    return 'active' if params[:name].to_s == page
  end
end

def render_active_home
  if controller.controller_name == 'articles' and controller.action_name != 'view_page'
    if controller.action_name = 'index'
      return if params[:page]
      return 'active'
    end
  end
end

def render_active_articles
  return if controller.action_name == 'view_page'
  if controller.controller_name == 'articles' and controller.action_name == 'index'
    return unless params[:page]
  end
  return 'active'
end

def category_name(id)
  category = Category.find_by_permalink(id)
  category.name
end

def display_comments_counter(article)
  link_to pluralize(article.published_comments.size,
          _('%d comments', article.published_comments.size),
          _('%d comment', article.published_comments.size),
          _('%d comments', article.published_comments.size)), article.permalink_url+"#commentaires"
   #commentaires anchor defind in ../views/read.html/erb 21 line <h3 class="feedback" id="commentaires">
end

def show_pages_links
  html = ''.html_safe
  pages = Page.find(:all, :conditions => {:published => true})
  pages.each do |page|
    html << content_tag(:li, link_to_permalink(page, page.title, nil, render_active_page(page.name)))
  end
  html
end

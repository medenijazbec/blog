module PostsHelper
    def display_index_post_links(post)
        html = "<td>#{link_to 'Show', post}</td>"
        if current_user == post.user
          html += "<td>#{link_to 'Edit', edit_post_path(post)}</td>"
          html += "<td>#{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }}</td>"
          capture do
            concat content_tag(:td, link_to('Show', post))
            if current_user == post.user
              concat content_tag(:td, link_to('Edit', edit_post_path(post)))
              concat content_tag(:td, link_to('Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }))
            end
        end
        html.html_safe
      
    
      def display_show_post_links(post)
          html = ""
            if current_user == post.user
             html += link_to 'Edit', edit_post_path(post)
             html += ' | '
            capture do
                if current_user == post.user
                concat link_to 'Edit', edit_post_path(post)
                concat ' | '
                end
                concat link_to 'Back', posts_path
            end
            html += link_to 'Back', posts_path
            html.html_safe
        end
    end
end        
end
end

module PostsHelper
    def display_index_post_links(post)
        html = "<td>#{link_to 'Show', post}</td>"
        if current_user == post.user
          html += "<td>#{link_to 'Edit', edit_post_path(post)}</td>"
          html += "<td>#{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }}</td>"
        end
        html.html_safe
      end
    
      def display_show_post_links(post)
        html = ""
        if current_user == post.user
          html += link_to 'Edit', edit_post_path(post)
          html += ' | '
        end
        html += link_to 'Back', posts_path
        html.html_safe
      end
end

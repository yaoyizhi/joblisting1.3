module UsersHelper
    def render_user_status(user)
        if user.is_validate
            content_tag(:span, '', class: 'fa fa-globe')
        else
            content_tag(:span, '', class: 'fa fa-lock')
        end
    end
end

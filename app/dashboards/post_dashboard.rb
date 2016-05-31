require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    body: Field::Text,
    title_color: SelectField.with_options(
      choices: Post::COLOR # Any array of choices. Add blank yourself if you need it.
    ),
    title_font_style: SelectField.with_options(
      choices: Post::FONT_STYLE # Any array of choices. Add blank yourself if you need it.
    ), 
    title_font_size: SelectField.with_options(
      choices: Post::FONT_SIZE  # Any array of choices. Add blank yourself if you need it.
    ),
    body_color: SelectField.with_options(
      choices: Post::COLOR # Any array of choices. Add blank yourself if you need it.
    ),
    body_font_size: SelectField.with_options(
      choices: Post::FONT_SIZE # Any array of choices. Add blank yourself if you need it.
    ),
    body_font_style: SelectField.with_options(
      choices: Post::FONT_STYLE # Any array of choices. Add blank yourself if you need it.
    ),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :body,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :body,
    :title_color,
    :title_font_style,
    :title_font_size,
    :body_color,
    :body_font_size,
    :body_font_style,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :title,
    :body,
    :title_color,
    :title_font_style,
    :title_font_size,
    :body_color,
    :body_font_size,
    :body_font_style,
  ].freeze

  # Overwrite this method to customize how posts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(post)
  #   "Post ##{post.id}"
  # end

  # ATTRIBUTE_TYPES = {
  #   # All your other fields
    # role: SelectField.with_options(
    #   choices: User.roles # Any array of choices. Add blank yourself if you need it.
    # )
  # }

  # FORM_ATTRIBUTES = [
  #   # Other form fields
  #   :title_color
  # ]
end

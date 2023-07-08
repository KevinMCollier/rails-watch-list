module ApplicationHelper
  def truncate_text(text, max_length)
    if text.length > max_length
      truncated_text = text[0..(max_length - 1)]
      last_space_index = truncated_text.rindex(' ')
      truncated_text = truncated_text[0...last_space_index] if last_space_index
      truncated_text += '...' unless truncated_text.ends_with?('...')
      truncated_text
    else
      text
    end
  end

end

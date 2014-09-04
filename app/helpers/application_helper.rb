module ApplicationHelper
  def render_time
    Time.now - @start_time
  end
end

# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper  
  def render_bundled_js_include_tags_for_dev
    js = asset_dir("js").map { |js| "#{js}" }
    javascript_include_tag(*js)
  end
  
  def render_bundled_stylesheet_link_tags_for_dev
    
    styles = asset_dir("css").map { |css| "#{css}" }
    styles << {:media => "screen"}
    stylesheet_link_tag(*styles)
  end
  
  private
  def asset_dir(which)
    case which
    when "js"
      directory = "javascripts"
      format = "js"
    when "css"
      directory = "stylesheets"
      format = "css"
    end
    
    Dir.glob("#{RAILS_ROOT}/public/#{directory}//**/*.#{format}").map {|path|
      path.split("//")[1].sub(".#{which}", "")
    }.sort
  end
  
end

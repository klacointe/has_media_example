module HasMediaHelper
  def generate_uid(object, context)
    "#{object.class.to_s.underscore}-#{context.to_s.underscore}-#{object.id}"
  end

  def add_medium_link(opts)
    link_to_function opts[:text] do |page| 
      page.insert_html :bottom, generate_uid(opts[:object], opts[:context]), 
        :partial => 'has_media/medium_field', 
        :locals => {
          :object => opts[:object], 
          :context => opts[:context]
        }
    end 
  end
end

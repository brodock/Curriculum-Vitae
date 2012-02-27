module Curriculum
  module Helpers
    def base_url
      @base_url ||= "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}"
    end
      
    def mail_to(email)
      link_to email, "mailto:#{email}"
    end
    
    def skype_to(skype_handler)
      link_to("Skype: #{skype_handler}", "skype:#{skype_handler}")
    end
    
    def link_to(text, url)
      "<a href=\"#{url}\">#{text}</a>"
    end
    
    def group_columns(num_columns, itens)
      output = []
      itens.each_with_index do |item, index|
        output[(index%num_columns)] ||= []
        output[(index%num_columns)] << item
      end
      output
    end
    
    def group_columns_max(num_columns, itens)
      max = itens.count/num_columns
      max = max+1 if itens.count%num_columns != 0
      max
    end
  end
end
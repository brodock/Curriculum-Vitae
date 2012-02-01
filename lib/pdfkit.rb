require 'pdfkit'
PDFKit.configure do |config|
  paths = %W(/usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf)
  paths.each do |path|
    if File.exists? path
      config.wkhtmltopdf = path
      break
    end
  end
  
  config.default_options[:ignore_load_errors] = true
  config.default_options[:print_media_type] = true
end
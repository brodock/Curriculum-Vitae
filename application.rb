# -*- encoding : utf-8 -*-
class CurriculumApp < Sinatra::Base  
  before do
    if defined? Psych
      @person = OpenStruct.new(Psych.load(File.read("db/curriculum.yml"))['person'])
    else
      @person = OpenStruct.new(YAML.load(File.read("db/curriculum.yml"))['person'])
    end
    
    @person.address = OpenStruct.new(@person.address)
    @person.skills.map!{ |skill| OpenStruct.new(skill) }
    @person.education.map!{ |edu| OpenStruct.new(edu) }
    @person.jobs.map!{ |job| OpenStruct.new(job) }
  end
  
  helpers do
    def mail_to(email)
      link_to email, "mailto:#{email}"
    end
    
    def skype_to(skype_handler)
      link_to("Skype: #{skype_handler}", "skype:#{skype_handler}")
    end
    
    def link_to(text, url)
      "<a href=\"#{url}\">#{text}</a>"
    end
  end

  get '/' do
    erb :index, :locals => { :title => 'teste', :person => @person }
  end
end
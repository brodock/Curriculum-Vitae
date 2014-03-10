# -*- encoding : utf-8 -*-
class CurriculumApp < Sinatra::Base
  include Curriculum::Loader
  register Sinatra::R18n
  register Sinatra::StaticAssets
  register Sinatra::AssetPipeline

  set :root, File.dirname(__FILE__)
  set :default_locale, 'en'

  helpers Curriculum::Helpers

  get '/' do
    redirect '/en'
  end

  get '/:locale' do
    case params[:locale]
      when 'pt'
        load_curriculum('curriculum.pt-BR')
      else
        load_curriculum('curriculum')
    end

    erb :index, :locals => {:title => "#{@person.name} | Curriculum Vitae", :person => @person}
  end

end
# Curruculum Vitae - Sinatra Application
class CurriculumApp < Sinatra::Base
  include Curriculum::Loader
  register Sinatra::R18n
  register Sinatra::StaticAssets

  set :root, File.dirname(__FILE__)
  set :default_locale, 'en'

  # Assets
  set :assets_css_compressor, :sass
  set :assets_js_compressor, :uglifier
  set :assets_precompile, %w(app.js app.css print.css *.png *.jpg *.svg *.eot *.ttf *.woff)

  register Sinatra::AssetPipeline

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

    erb :index, locals: { title: "#{@person.name} | Curriculum Vitae", person: @person }
  end
end

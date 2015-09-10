module Curriculum
  module Loader
    def load_curriculum(curriculum)
      @person = DeepStruct.new(YAML.load(File.read("db/#{curriculum}.yml"))['person'])
    end
  end
end

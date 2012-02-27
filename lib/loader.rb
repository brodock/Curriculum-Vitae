module Curriculum
  module Loader
    def load_curriculum(curriculum)
      @person = OpenStruct.new(YAML.load(File.read("db/#{curriculum}.yml"))['person'])

      @person.address = OpenStruct.new(@person.address)
      @person.skills.map!{ |skill| OpenStruct.new(skill) }
      @person.jobs.map!{ |job| OpenStruct.new(job) }
      @person.education.map!{ |edu| OpenStruct.new(edu) }
      @person.congresses.map!{ |con| OpenStruct.new(con) }
    end
  end
end
if defined?(PryRails::RAILS_PROMPT)
  Pry.config.prompt = PryRails::RAILS_PROMPT
end
begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => err
  puts "no awesome_print :("
end

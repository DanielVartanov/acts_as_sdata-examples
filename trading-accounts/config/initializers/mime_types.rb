# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

ActionController::Base.param_parsers[Mime::Type.lookup('application/atom+xml')] = Proc.new do |data|
  { :entry => Atom::Entry.load_entry(data) }
end
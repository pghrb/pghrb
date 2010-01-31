class DirectoryIndex
 
  def initialize(app)
    @app = app
  end
 
  def call(env)
    %w(REQUEST_METHOD REQUEST_URI PATH_INFO).each do |name|
      value = env[name]
      if value && value =~ /\/$/
        value << 'index.html'
      end
    end
    @app.call(env)
  end
 
end
 
use DirectoryIndex

root = File.dirname(__FILE__) + "/htdocs"
run Rack::Directory.new(root)
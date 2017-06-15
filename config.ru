require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#use Rack::Static, :urls => ['/css'], :root => 'public' # Rack fix allows seeing the css folder.
use Rack::Static, :urls => ["/css", "/img", "/js", "/fonts"], :root => 'public' # Rack fix allows seeing the css folder.

use Rack::MethodOverride
run ApplicationController
use StudentsController
use PresentationsController

use Rack::Static, :urls => ["/"]

app = proc { [ 404, {'Content-Type' => 'text/plain'}, "" ] }
run app
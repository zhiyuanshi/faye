# http://faye.jcoglan.com/ruby.html

# https://github.com/ddollar/foreman/wiki/Missing-Output
$stdout.sync = true

require 'faye'
Faye::WebSocket.load_adapter("thin")

app = Faye::RackAdapter.new(mount: "/faye", timeout: 25)

run app

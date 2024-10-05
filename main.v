module main

import veb

pub struct Context {
	veb.Context
}

pub struct App {
	veb.StaticHandler
pub mut:
	secret_key string
	data       Data
	site_name  string
}

fn main() {
	mut app := &App{}
	mut ctx := Context{}
	app.site_name = 'Værmeldinga.no'

	mut data := Data{
		name: 'Cool guy'
	}
	app.data = data
	app.secret_key = 'ygr87gc38g87wgqhduiwd'
	app.static_mime_types['.yml'] = 'txt/plain'
	app.static_mime_types['.scss'] = 'txt/plain'

	// app.handle_static('static/', true)!

	// app.serve_static('/', 'static/index.html')!
	// app.serve_static('/login', 'static/login.html')!
	app.serve_static('/css/bulma.css', 'static/css/bulma.css')!
	app.serve_static('/css/toggle-theme.css', 'static/css/toggle-theme.css')!
	app.serve_static('/js/toggle-theme.js', 'static/js/toggle-theme.js')!

	app.serve_static('/images/favicon.ico', 'static/images/favicon.ico')!
	app.serve_static('/images/logo.png', 'static/images/logo.png')!

	app.serve_static('/icons/c01d.png', 'static/icons/c01d.png')!
	app.serve_static('/icons/c03n.png', 'static/icons/c03n.png')!
	app.serve_static('/icons/c03d.png', 'static/icons/c03d.png')!
	app.serve_static('/icons/c02n.png', 'static/icons/c02n.png')!
	app.serve_static('/icons/c03d.png', 'static/icons/c03d.png')!
	// println(app.static_files.str().to_upper())

	veb.run[App, Context](mut app, 8080)
}

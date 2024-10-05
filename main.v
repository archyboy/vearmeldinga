module main

import veb

pub struct Context {
	veb.Context
}

pub struct App {
	veb.StaticHandler
	pub mut:
	secret_key string
	data Data
	site_name string
	theme_mode string = 'dark'
}

fn main() {
	mut app := &App{}

	mut ctx := Context{}
	app.theme_mode = ctx.query['theme_mode']
	println(app.theme_mode)
	app.site_name = 'Værmeldinga.no'

	mut data := Data{ name : 'Cool guy' }
	app.data = data
	app.secret_key = 'ygr87gc38g87wgqhduiwd'
	app.static_mime_types['.yml'] = 'txt/plain'
	app.static_mime_types['.scss'] = 'txt/plain'

	//app.handle_static('static/', true)!

	//app.serve_static('/', 'static/index.html')!
	//app.serve_static('/login', 'static/login.html')!
	app.serve_static('/css/bulma.css', 'static/css/bulma.css')!
	app.serve_static('/icons/c01d.png', 'static/icons/c01d.png')!
	app.serve_static('/icons/a05n.png', 'static/icons/a05n.png')!
	app.serve_static('/icons/c03d.png', 'static/icons/c03d.png')!
	app.serve_static('/icons/c02n.png', 'static/icons/c02n.png')!
	app.serve_static('/icons/c03d.png', 'static/icons/c03d.png')!
	//println(app.static_files.str().to_upper())

	veb.run[App, Context](mut app, 8080)
}


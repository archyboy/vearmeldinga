module main

import veb

@['/login']
pub fn (app &App) login(mut ctx Context) veb.Result {
	title := 'Logg inn'

	mut usermap := {
		'username': 'username'
		'password': 'password'
		'email': 'some@email.com'
	}
	return ctx.html($tmpl('static/login.html'))
}

module main

import veb

@['/login']
pub fn (app &App) login(mut ctx Context) veb.Result {
	title := 'Logg inn'

	mut usermap := {
		'username': 'archy'
		'password': 'mypassword'
		'email': 'archy@workmail.com'
	}
	return ctx.html($tmpl('static/login.html'))
}

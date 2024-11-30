module main

import veb

struct FormData {
	fullname string
	username string
	email string
	message string
}

@['/contact']
pub fn (app &App) contact(mut ctx Context) veb.Result {
	title := 'Kontakt'

	formdata := FormData{
		fullname: 'Full Name'
		username: 'username'
		email: 'some@email.com'
		message: 'This is the message'
	}
	return ctx.html($tmpl('static/contact.html'))
}

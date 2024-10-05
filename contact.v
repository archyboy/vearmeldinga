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
		fullname: 'Anders Habberstad'
		username: 'archy'
		email: 'habberstad@mail.com'
		message: 'This is the message'
	}
	return ctx.html($tmpl('static/contact.html'))
}

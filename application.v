module main

import veb

pub struct Data {
	name string
}

@['/application'; get; post]
pub fn (mut app App) application(mut ctx Context) veb.Result {
	title := 'App'

	realname := '${ctx.query['firstname']} ${ctx.query['lastname']}'
	data := ctx.query['data']

	println('#---------------------------Application-------------------------------------------------------#')
	println(realname)
	println(data)
	println(ctx)
	println('#----------------------------------------------------------------------------------#')
	/*
	mut usermap := {
		'username': 'archy'
		'password': 'mypassword'
		'email': 'archy@workmail.com'
	}

	email := ctx.form['email']
	username := ctx.form['username']
	realname := ctx.form['realname']
	message := ctx.form['message']
	options := ctx.form['options']
	data_json := json.encode(app.data)
	*/
	return $veb.html('static/application.html')
}

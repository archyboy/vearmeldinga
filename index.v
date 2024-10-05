module main

import veb
import net.http
import json

//@['/']
pub fn (app &App) index(mut ctx Context) veb.Result {
	title := 'Hjem'

	search_query := ctx.form['search_query']
	//println(search_query)

	api_response := http.get('https://api.weatherbit.io/v2.0/current?key=35825ae95bfc408e81c8c514d9a01d7f&units=M&lang=nb&postal_code=2750&country=no${search_query}') or {
		panic(err)
	}

	api_json := api_response.body
	api_json_str := api_json.str()

	api_data := json.decode(WeatherData, api_json_str) or {
		eprintln('Failed to decode json, error: ${err}')
		exit(1)
	}
	println(api_json_str)
	println(api_data)
	return $veb.html('static/index.html')
}

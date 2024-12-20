module main

import net.http

fn main() {
	for i in 1 .. 2 {
		req := http.new_request(http.method_from_str('GET'), 'http://xn--vrmeldinga-d6a.no:8080/application',
			'data=Some REQ Data!!')

		fetch_config := http.FetchConfig{
			url:                  'http://xn--vrmeldinga-d6a.no:8080/application/?firstname=Anders&lastname=Habberstad'
			method:               .get
			data:                 'data=Some RESP Data!!'
			stop_receiving_limit: 0
		}

		res := http.fetch(fetch_config) or {
			eprintln('Error: ${err}')
			exit(1)
		}

		println(req)
		println(res)

		println('#----------------------${i}--------------------------#')
	}
}

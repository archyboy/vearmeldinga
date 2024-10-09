module main

import net.http

fn main() {
	for i in 1 .. 100 {
		req := http.new_request(http.method_from_str('RUN'), 'http://xn--vrmeldinga-d6a.no:8080/application',
			'firstname=Anders&lastname=Habberstad')

		fetch_config := http.FetchConfig{
			url:                  'http://xn--vrmeldinga-d6a.no:8080/application'
			method:               .get
			data:                 'firstname=Anders&lastname=Habberstad'
			stop_receiving_limit: 0
		}

		res := http.fetch(fetch_config) or {
			eprintln('Error: ${err}')
			exit(1)
		}

		println(req)
		// println(res)

		println('#----------------------${i}--------------------------#')
	}
}

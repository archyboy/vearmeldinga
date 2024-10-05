module main

import os


pub struct Modes {
pub mut:
	theme_mode string
}

pub fn (modes Modes) set_theme_mode(mode string) {
	modes_file := os.open_file('modes.json', 'rw') or {
		eprintln(err)
		exit(0)
	}
}

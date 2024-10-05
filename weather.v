module main

pub struct WeatherData {
	count int
	data []WeatherDataItem
}

pub struct WeatherDataItem {
	pub mut:
	city string @[json: city_name]
	state_code string @[json: state_code]
	app_temperature f32 @[json: app_temp]
	temperature f32 @[json: temp]
	wind_speed f32 @[json: wind_spd]
	wind_gust  f32 @[json: gust]
	wind_direction int @[json: wind_dir]
	precipitation f32 @[json: precip]
	humidity int @[json: rh]
	clouds int @[json: clouds]
	visibility  f32 @[json: vis]
	timezone  string @[json: timezone]
	uv  int @[json: uv]
	air_pressure f32 @[json: slp]
	weather_short WeatherShort @[json: weather]
}

pub struct WeatherShort{
	pub mut:
	code int @[json: code]
	icon string @[json: icon]
	description string @[json: description]
	wind_direction string @[json: wind_dir]
	wind_cdirection string @[json: wind_cdir]
	wind_cdirection_description string @[json: wind_cdir_full]
}

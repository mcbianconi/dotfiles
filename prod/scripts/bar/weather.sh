#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#00D7D7}"
bg_end="%{B-}"

function weather() {
    local location="-23.2538,-45.9120"
    local units=metric
    local url='http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID=${WEATHER_API_KEY}'
    local api_response=$(curl -s "${url}")
    #local temperature=$(echo "${api_response}" | jq '.currently.temperature' | xargs printf '%.*f\n' 0)
    local weather_icon=$(echo "${api_response}" | jq '.currently.icon')
    local summary=$(echo "${api_response}" | jq -r '.currently.summary')
    local temp_icon=""
    local temp_celcius="°C"
    case "${weather_icon}" in
      '"clear-day"')
        local icon=""
        ;;
      '"clear-night"')
        local icon=""
        ;;
      '"rain"')
        local icon=""
        ;;
      '"snow"')
        local icon=""
        ;;
      '"sleet"')
        local icon=""
        ;;
      '"wind"')
        local icon=""
        ;;
      '"fog"')
        local icon=""
        ;;
      '"cloudy"')
        local icon=""
        ;;
      '"partly-cloudy-day"')
        local icon=""
        ;;
      '"partly-cloudy-night"')
        local icon=""
        ;;
    esac
#    echo -n "${bg_start}${fg_start}${icon} ${summary} ${temp_icon} ${temperature} ${temp_celcius}${fg_end}${bg_end}"
    echo -n "${bg_start}${fg_scart} 22º${fg_end}${bg_end}"
}

weather

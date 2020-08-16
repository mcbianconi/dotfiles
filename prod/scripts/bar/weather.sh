#!/bin/bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#00D7D7}"
bg_end="%{B-}"

function get_weather {

  local LAT="-23.2493833"
  local LON="-45.9134777"
  local UNITS="metric"
  local URL="https://community-open-weather-map.p.rapidapi.com/weather?lat=${LAT}&lon=${LON}&units=${UNITS}"

  curl -s --request GET \
    --url ${URL} \
    --header "x-rapidapi-host: community-open-weather-map.p.rapidapi.com" \
    --header "x-rapidapi-key: ${API_KEY}"
}

function weather {
    local api_response=$(get_weather)
    local weather_icon=$(echo ${api_response} | jq '.weather[].icon')
    local summary=$(echo ${api_response} | jq -r '.weather[].main')
    local city_name=$(echo ${api_response} | jq -r '.name')
    local temperature=$(echo ${api_response} | jq -r '.main.temp') 
    # echo $weather_icon
    # echo $summary
    # echo $city_name

    local temp_icon=""
    local temp_celcius="°C"

    # case "${weather_icon}" in
    #   "'01d'")
    #     local icon=""
    #     ;;
    #   "'01n'")
    #     local icon=""
    #     ;;
    #   "'10d'"|"'10n'")
    #     local icon=""
    #     ;;
    #   "'13d'"|"'13n'")
    #     local icon=""
    #     ;;
    #   "'09d'"|"'09n'")
    #     local icon=""
    #     ;;
    #   "'50d'"|"'50n'")
    #     local icon=""
    #     ;;
    #   "'02d'"|"'02n'"|"'04d'"|"'04n'")
    #     local icon=""
    #     ;;
    #   "'03d'")
    #     local icon=""
    #     ;;
    #   "'03n'")
    #     local icon=""
    #     ;;
    # esac
    echo -n "${bg_start}${fg_start}${summary} ${temp_icon} ${temperature} ${temp_celcius}${fg_end}${bg_end}"
    #echo -n "${bg_start}${fg_start}${icon} ${summary} ${temp_icon} ${temperature} ${temp_celcius}${fg_end}${bg_end}"
    #echo -n "${bg_start}${fg_scart} 22º${fg_end}${bg_end}"
}

#weather
#get_weather

//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Techno on 10/28/15.
//  Copyright © 2015 Techno. All rights reserved.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    
    @IBOutlet weak var DateLeabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var degreeLabel: UILabel!
    
    
    // testing
    
//   {
//    "current_condition" =     (
//    {
//    FeelsLikeC = 34;
//    FeelsLikeF = 93;
//    cloudcover = 50;
//    humidity = 55;
//    "observation_time" = "09:03 AM";
//    precipMM = "0.5";
//    pressure = 1016;
//    "temp_C" = 31;
//    "temp_F" = 88;
//    visibility = 8;
//    weatherCode = 116;
//    weatherDesc =             (
//    {
//    value = "Partly Cloudy";
//    }
//    );
//    weatherIconUrl =             (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0002_sunny_intervals.png";
//    }
//    );
//    winddir16Point = E;
//    winddirDegree = 100;
//    windspeedKmph = 15;
//    windspeedMiles = 9;
//    }
//    );
//    request =     (
//    {
//    query = "Bangalore, India";
//    type = City;
//    }
//    );
//    weather =     (
//    {
//    astronomy =             (
//    {
//    moonrise = "05:30 AM";
//    moonset = "05:44 PM";
//    sunrise = "06:09 AM";
//    sunset = "06:03 PM";
//    }
//    );
//    date = "2015-10-12";
//    hourly =             (
//    {
//    DewPointC = 20;
//    DewPointF = 68;
//    FeelsLikeC = 21;
//    FeelsLikeF = 70;
//    HeatIndexC = 24;
//    HeatIndexF = 76;
//    WindChillC = 21;
//    WindChillF = 70;
//    WindGustKmph = 11;
//    WindGustMiles = 7;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 0;
//    chanceofovercast = 0;
//    chanceofrain = 77;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 0;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 86;
//    humidity = 93;
//    precipMM = "0.1";
//    pressure = 1013;
//    tempC = 21;
//    tempF = 70;
//    time = 230;
//    visibility = 10;
//    weatherCode = 176;
//    weatherDesc =                     (
//    {
//    value = "Patchy rain nearby";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0025_light_rain_showers_night.png";
//    }
//    );
//    winddir16Point = WSW;
//    winddirDegree = 252;
//    windspeedKmph = 6;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 21;
//    DewPointF = 69;
//    FeelsLikeC = 21;
//    FeelsLikeF = 70;
//    HeatIndexC = 24;
//    HeatIndexF = 76;
//    WindChillC = 21;
//    WindChillF = 70;
//    WindGustKmph = 10;
//    WindGustMiles = 6;
//    chanceoffog = 2;
//    chanceoffrost = 0;
//    chanceofhightemp = 0;
//    chanceofovercast = 0;
//    chanceofrain = 16;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 73;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 68;
//    humidity = 96;
//    precipMM = "0.1";
//    pressure = 1013;
//    tempC = 21;
//    tempF = 70;
//    time = 530;
//    visibility = 2;
//    weatherCode = 143;
//    weatherDesc =                     (
//    {
//    value = Mist;
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0006_mist.png";
//    }
//    );
//    winddir16Point = NW;
//    winddirDegree = 315;
//    windspeedKmph = 6;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 23;
//    DewPointF = 74;
//    FeelsLikeC = 28;
//    FeelsLikeF = 82;
//    HeatIndexC = 28;
//    HeatIndexF = 82;
//    WindChillC = 25;
//    WindChillF = 77;
//    WindGustKmph = 7;
//    WindGustMiles = 4;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 97;
//    chanceofovercast = 0;
//    chanceofrain = 16;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 86;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 69;
//    humidity = 89;
//    precipMM = "0.2";
//    pressure = 1015;
//    tempC = 25;
//    tempF = 77;
//    time = 830;
//    visibility = 5;
//    weatherCode = 263;
//    weatherDesc =                     (
//    {
//    value = "Patchy light drizzle";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0009_light_rain_showers.png";
//    }
//    );
//    winddir16Point = NW;
//    winddirDegree = 326;
//    windspeedKmph = 6;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 24;
//    DewPointF = 75;
//    FeelsLikeC = 30;
//    FeelsLikeF = 86;
//    HeatIndexC = 30;
//    HeatIndexF = 86;
//    WindChillC = 26;
//    WindChillF = 80;
//    WindGustKmph = 8;
//    WindGustMiles = 5;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 96;
//    chanceofovercast = 0;
//    chanceofrain = 21;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 72;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 52;
//    humidity = 86;
//    precipMM = "0.5";
//    pressure = 1014;
//    tempC = 26;
//    tempF = 80;
//    time = 1130;
//    visibility = 10;
//    weatherCode = 353;
//    weatherDesc =                     (
//    {
//    value = "Light rain shower";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0009_light_rain_showers.png";
//    }
//    );
//    winddir16Point = NNW;
//    winddirDegree = 333;
//    windspeedKmph = 7;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 23;
//    DewPointF = 73;
//    FeelsLikeC = 33;
//    FeelsLikeF = 91;
//    HeatIndexC = 33;
//    HeatIndexF = 91;
//    WindChillC = 29;
//    WindChillF = 84;
//    WindGustKmph = 3;
//    WindGustMiles = 2;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 95;
//    chanceofovercast = 0;
//    chanceofrain = 26;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 91;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 46;
//    humidity = 70;
//    precipMM = "0.1";
//    pressure = 1011;
//    tempC = 29;
//    tempF = 84;
//    time = 1430;
//    visibility = 10;
//    weatherCode = 176;
//    weatherDesc =                     (
//    {
//    value = "Patchy rain nearby";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0009_light_rain_showers.png";
//    }
//    );
//    winddir16Point = E;
//    winddirDegree = 99;
//    windspeedKmph = 3;
//    windspeedMiles = 2;
//    },
//    {
//    DewPointC = 23;
//    DewPointF = 73;
//    FeelsLikeC = 30;
//    FeelsLikeF = 86;
//    HeatIndexC = 30;
//    HeatIndexF = 86;
//    WindChillC = 27;
//    WindChillF = 80;
//    WindGustKmph = 8;
//    WindGustMiles = 5;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 94;
//    chanceofovercast = 0;
//    chanceofrain = 11;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 94;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 37;
//    humidity = 77;
//    precipMM = "0.0";
//    pressure = 1011;
//    tempC = 27;
//    tempF = 80;
//    time = 1730;
//    visibility = 10;
//    weatherCode = 116;
//    weatherDesc =                     (
//    {
//    value = "Partly Cloudy";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0002_sunny_intervals.png";
//    }
//    );
//    winddir16Point = SE;
//    winddirDegree = 145;
//    windspeedKmph = 7;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 18;
//    DewPointF = 65;
//    FeelsLikeC = 25;
//    FeelsLikeF = 76;
//    HeatIndexC = 25;
//    HeatIndexF = 76;
//    WindChillC = 22;
//    WindChillF = 72;
//    WindGustKmph = 13;
//    WindGustMiles = 8;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 0;
//    chanceofovercast = 0;
//    chanceofrain = 7;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 93;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 32;
//    humidity = 79;
//    precipMM = "0.0";
//    pressure = 1014;
//    tempC = 22;
//    tempF = 72;
//    time = 2030;
//    visibility = 10;
//    weatherCode = 116;
//    weatherDesc =                     (
//    {
//    value = "Partly Cloudy";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0004_black_low_cloud.png";
//    }
//    );
//    winddir16Point = SE;
//    winddirDegree = 141;
//    windspeedKmph = 6;
//    windspeedMiles = 4;
//    },
//    {
//    DewPointC = 18;
//    DewPointF = 64;
//    FeelsLikeC = 21;
//    FeelsLikeF = 71;
//    HeatIndexC = 24;
//    HeatIndexF = 76;
//    WindChillC = 21;
//    WindChillF = 71;
//    WindGustKmph = 10;
//    WindGustMiles = 6;
//    chanceoffog = 0;
//    chanceoffrost = 0;
//    chanceofhightemp = 0;
//    chanceofovercast = 0;
//    chanceofrain = 20;
//    chanceofremdry = 0;
//    chanceofsnow = 0;
//    chanceofsunshine = 92;
//    chanceofthunder = 0;
//    chanceofwindy = 0;
//    cloudcover = 26;
//    humidity = 79;
//    precipMM = "0.1";
//    pressure = 1014;
//    tempC = 21;
//    tempF = 71;
//    time = 2330;
//    visibility = 10;
//    weatherCode = 116;
//    weatherDesc =                     (
//    {
//    value = "Partly Cloudy";
//    }
//    );
//    weatherIconUrl =                     (
//    {
//    value = "http://cdn.worldweatheronline.net/images/wsymbols01_png_64/wsymbol_0004_black_low_cloud.png";
//    }
//    );
//    winddir16Point = SE;
//    winddirDegree = 135;
//    windspeedKmph = 5;
//    windspeedMiles = 3;
//    }
//    );
//    maxtempC = 29;
//    maxtempF = 84;
//    mintempC = 20;
//    mintempF = 68;
//    uvIndex = 12;
//    }
//    );
//    }
//

}
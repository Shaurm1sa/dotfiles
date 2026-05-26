import "dotenv/config";

const countryId = "688860";
const API_KEY = "51dde1c7ea7383965cb541ce65d85252";

const API_KEY = process.env.API_KEY;
const CITY_ID = process.env.CITY_ID;

const iconMap = {
  "01d": "☀️",
  "01n": "🌙",
  "02d": "⛅",
  "02n": "⛅",
  "03d": "☁️",
  "03n": "☁️",
  "04d": "☁️",
  "04n": "☁️",
  "09d": "🌧️",
  "09n": "🌧️",
  "10d": "🌦️",
  "10n": "🌦️",
  "11d": "⛈️",
  "11n": "⛈️",
  "13d": "❄️",
  "13n": "❄️",
  "50d": "🌫️",
  "50n": "🌫️",
};

const baseUrl = `https://api.openweathermap.org/data/2.5/weather?id=${CITY_ID}&units=metric&appid=${API_KEY}&lang=uk`;

fetch(baseUrl)
  .then((res) => res.json())
  .then((data) => {
    console.log(data);
    console.log("------------");
    const temp = Math.round(data.main.temp);
    const description = data.weather[0].description;
    const icon = iconMap[data.weather[0].icon] ?? "🌡️";
    console.log(
      JSON.stringify({
        text: `${icon}  ${temp}°C`,
        tooltip: description,
      }),
    );
  })

  .catch((error) => {
    console.error("Помилка запиту:", error);
  });

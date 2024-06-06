const express = require('express');
const app = express();
const port = 3000;
const cors = require('cors');

app.use(cors());

const countries = {
  "brasil": {
    "name": "Brasil",
    "fullName": "Federative Republic of Brazil",
    "money": "Brazilian real - R$",
    "continent": "Americas",
    "size": "8,515,767.0 KM²",
    "language": "Portuguese",
    "population": "212,559,409",
    "capital": "Brasília",
    "coord": "-10.0 Lat, -55.0 Lng",
    "urlImage": "https://raw.githubusercontent.com/danmadeira/bandeira-nacional/229b2da3d3cef35bdecdacbc2481cb67ae6cb643/img/Bandeira_do_Brasil.svg"
  },
  "usa": {
    "name": "United States",
    "fullName": "United States of America",
    "money": "United States Dollar - $",
    "continent": "Americas",
    "size": "9,833,520 KM²",
    "language": "English",
    "population": "331,002,651",
    "capital": "Washington D.C.",
    "coord": "38.0 Lat, -97.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg"
  },
  "alemanha": {
    "name": "Germany",
    "fullName": "Federal Republic of Germany",
    "money": "Euro - €",
    "continent": "Europe",
    "size": "357,022 KM²",
    "language": "German",
    "population": "83,783,942",
    "capital": "Berlin",
    "coord": "51.0 Lat, 9.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg"
  },
  "frança": {
    "name": "France",
    "fullName": "French Republic",
    "money": "Euro - €",
    "continent": "Europe",
    "size": "551,695 KM²",
    "language": "French",
    "population": "65,273,511",
    "capital": "Paris",
    "coord": "46.0 Lat, 2.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/c/c3/Flag_of_France.svg"
  },
  "japão": {
    "name": "Japan",
    "fullName": "Japan",
    "money": "Japanese Yen - ¥",
    "continent": "Asia",
    "size": "377,975 KM²",
    "language": "Japanese",
    "population": "126,476,461",
    "capital": "Tokyo",
    "coord": "36.0 Lat, 138.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/9/9e/Flag_of_Japan.svg"
  },
  "china": {
    "name": "China",
    "fullName": "People's Republic of China",
    "money": "Chinese Yuan - ¥",
    "continent": "Asia",
    "size": "9,596,961 KM²",
    "language": "Chinese",
    "population": "1,439,323,776",
    "capital": "Beijing",
    "coord": "35.0 Lat, 105.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/commons/f/fa/Flag_of_the_People%27s_Republic_of_China.svg"
  },
  "india": {
    "name": "India",
    "fullName": "Republic of India",
    "money": "Indian Rupee - ₹",
    "continent": "Asia",
    "size": "3,287,263 KM²",
    "language": "Hindi, English",
    "population": "1,380,004,385",
    "capital": "New Delhi",
    "coord": "20.0 Lat, 77.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/4/41/Flag_of_India.svg"
  },
  "australia": {
    "name": "Australia",
    "fullName": "Commonwealth of Australia",
    "money": "Australian Dollar - $",
    "continent": "Oceania",
    "size": "7,692,024 KM²",
    "language": "English",
    "population": "25,499,884",
    "capital": "Canberra",
    "coord": "-27.0 Lat, 133.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/b/b9/Flag_of_Australia.svg"
  },
  "russia": {
    "name": "Russia",
    "fullName": "Russian Federation",
    "money": "Russian Ruble - ₽",
    "continent": "Europe/Asia",
    "size": "17,125,191 KM²",
    "language": "Russian",
    "population": "145,934,462",
    "capital": "Moscow",
    "coord": "60.0 Lat, 90.0 Lng",
    "urlImage": "https://upload.wikimedia.org/wikipedia/en/f/f3/Flag_of_Russia.svg"
  }
};

app.get('/:country', (req, res) => {
  const countryParam = req.params.country.toLowerCase();
  const selectedCountry = countries[countryParam];
  if (selectedCountry) {
    res.json(selectedCountry);
  } else {
    res.status(404).send('País não encontrado');
  }
});

app.listen(port, () => {
  console.log(`Servidor está rodando em http://localhost:${port}`);
});

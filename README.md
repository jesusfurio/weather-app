# Weather App

Aplicación hecha con NodeJS para realizar consultas a las APIs de Mapbox y Darksky. Estas consultas devolverán el estado del tiempo en la ubicación que introduzcamos en la web.

### Pre-requisitos 📋

Es necesario crearse una cuenta en Mapbox:

https://www.mapbox.com/

Y en darksky:

https://darksky.net/

Una vez creada, debemos introducir nuestro token en src/utils/forecast.js y src/utils/forecast.js, concretamente en las variables "url". Para que la aplicación funcione debemos modificar las quedando de la siguiente manera:

```
const url = 'https://api.darksky.net/forecast/a78d6a897s5da8s75das/'+ encodeURIComponent(longitude) +','+ encodeURIComponent(latitude) +'?units=si'
```
```
const url = 'https://api.mapbox.com/geocoding/v5/mapbox.places/'+ encodeURIComponent(address) +'.json?access_token=pk.da9s6da76a89s.da768d6a869&limit=1'
```
(Los tokens usados no son reales)

## Despliegue 📦

Puedes desplegar la aplicación utilizando Docker. Para ello primero construye la imagen ejecutando el siguiente comando en la carpeta donde se encuentra el fichero Dockerfile, una vez descargas el repositorio:

```
docker build -t weather_app .
```
Y después levantamos el contenedor, ejecutando el comando "npm run app":

```
docker run -dti --name weather-app -p 3000:3000 weather npm run app
```

Si accedemos en nuestro navegador a la siguiente URL podremos ver la aplicación en ejecución:

```
localhost:3000
```
import axios from 'axios'

    const instance = axios.create({
        baseURL: 'http://0.0.0.0:8005/api/',
    });
    export default {
        getCities: () =>
        instance({
            'method':'GET',
            'url':'/cities',
        }),
        getData: (config) =>
        instance({
            'method':'GET',
            'url':'/climatedata',
            'params': config


        }),


    }

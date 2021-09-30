import axios from "axios";

axios.interceptors.request.use(
    function (config) {
        return config;
    },
    function (error) {
        console.log(error);
        return Promise.reject(error);
    }
);
axios.interceptors.response.use(
    function (response) {
        return response;
    },
    function (error) {
        console.log(error);
        return Promise.reject(error);
    }
);

export const httpPost = (url, data = {}) => {
    return new Promise((resolve, reject) => {
        axios
            .post(url, qs.stringify(data))
            .then((response) => {
                resolve(response.data);
            })
            .catch((err) => {
                reject(err);
            });
    });
};

export const httpGet = (url, data = {}) => {
    return new Promise((resolve, reject) => {
        axios
            .get(url, { params: data })
            .then((response) => {
                resolve(response.data);
            })
            .catch((err) => {
                reject(err);
            });
    });
};

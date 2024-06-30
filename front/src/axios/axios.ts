import axios, { AxiosResponse } from 'axios';

import { ElNotification } from 'element-plus'
import { h } from 'vue'
import i18n from '@/language';
const { t } = i18n.global

// 创建一个 axios 实例
const axiosInstance = axios.create();

// 添加请求拦截器
axiosInstance.interceptors.request.use(
    (config :any) => {
        // 在请求头中添加一个token
        const token = localStorage.getItem("token")
        config.headers['Authorization'] = token;
        return config;
    },
    (error) => {
        // 处理请求错误
        return Promise.reject(error);
    }
);

// 添加响应拦截器
axiosInstance.interceptors.response.use(
    (response :any) => {
        // 对响应数据做些什么
        console.log('响应拦截器:', response);
        if(response.status == 202)
        {
            ElNotification({
                title: t("common.noties"),
                message: h('i', { style: 'color: teal' }, t("sign.tokenTimeOut")),
            })
            localStorage.setItem("isSignIn","false")
            localStorage.removeItem("token")
        }
        return response;
    },
    (error) => {
        // 处理响应错误
        return Promise.reject(error);
    }
);

//get请求
export function get(url: string, params: any): Promise<AxiosResponse<any>> {
    return axiosInstance({
        method: 'get',
        url: `${url}`,
        params: params,
    });
}

//post请求 使用json传参
export function post(url: string, params: any): Promise<AxiosResponse<any>> {
    return axiosInstance({
        method: 'post',
        url: `${url}`,
        data: params,
        headers: { "Content-Type": "application/json" }
    });
}
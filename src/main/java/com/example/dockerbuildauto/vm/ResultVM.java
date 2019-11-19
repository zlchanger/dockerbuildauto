package com.example.dockerbuildauto.vm;

import java.util.Date;

/**
 * @Auther: changzhaoliang
 * @Date: 2019-11-18 10:00
 * @Description:
 */
public class ResultVM<T> {
    private Long status;
    private T result;
    private String message;
    private Date time;

    public ResultVM(Long status, T result, String message, Date time) {
        this.status = status;
        this.result = result;
        this.message = message;
        this.time = time;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}

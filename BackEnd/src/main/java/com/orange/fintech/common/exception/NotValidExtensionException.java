package com.orange.fintech.common.exception;

public class NotValidExtensionException extends Exception {
    public NotValidExtensionException() {
        System.err.println("지원하는 확장자가 아닙니다.");
    }
}

package com.RaiderTrade.api.Service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
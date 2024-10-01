package com.android.ims;

interface IHwImsUtManager {
    boolean isSupportCFT(int phoneId);
    boolean isUtEnable(int phoneId);
    int updateCallForwardUncondTimer(int phoneId, int starthour, int startminute, int endhour, int endminute, int action, int condition, String number);
    int updateCallBarringOption(int phoneId, String password, int cbType, boolean enable, int serviceClass, in String[] barrList);
    int queryCallForwardForServiceClass(int phoneId, int condition, String number, int serviceClass);
    void processECT(int phoneId);
    String getUtIMPUFromNetwork(int phoneId);
}
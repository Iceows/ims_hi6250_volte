package com.huawei.ims;

public interface IImsCallListListener {
    void onImsCallSessionAdded(HwImsCallSessionImpl hwImsCallSessionImpl);

    void onImsCallSessionRemoved(HwImsCallSessionImpl hwImsCallSessionImpl);
}

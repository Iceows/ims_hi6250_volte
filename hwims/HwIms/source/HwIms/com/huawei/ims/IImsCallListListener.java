package com.huawei.ims;

/* loaded from: IImsCallListListener.class */
public interface IImsCallListListener {
    void onImsCallSessionAdded(HwImsCallSessionImpl hwImsCallSessionImpl);

    void onImsCallSessionRemoved(HwImsCallSessionImpl hwImsCallSessionImpl);
}

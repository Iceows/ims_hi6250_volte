package vendor.huawei.hardware.radio.ims.V2_0;

import android.hidl.base.V1_0.DebugInfo;
import android.hidl.base.V1_0.IBase;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.NativeHandle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public interface IRadioIms extends IBase {
    public static final String kInterfaceName = "vendor.huawei.hardware.radio.ims@2.0::IRadioIms";

    void acceptImsCall(int i, int i2) throws RemoteException;

    void addImsConfMember(int i, String str) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    void cancelImsVideoCall(int i, int i2) throws RemoteException;

    void conference(int i) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    void explicitCallTransfer(int i) throws RemoteException;

    void getCurrentImsCalls(int i) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    void getDmDynamicPram(int i) throws RemoteException;

    void getDmPcscf(int i) throws RemoteException;

    void getDmTimer(int i) throws RemoteException;

    void getDmUser(int i) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    void getImsImpu(int i, int i2) throws RemoteException;

    void getImsSmsConfig(int i) throws RemoteException;

    void getLastImsCallFailCause(int i) throws RemoteException;

    void getSmsPsi(int i) throws RemoteException;

    void getUiccFile(int i, int i2, int i3) throws RemoteException;

    void getVolteDomain(int i) throws RemoteException;

    void getVolteImpi(int i) throws RemoteException;

    void hangup(int i, int i2) throws RemoteException;

    void hangupForegroundResumeBackground(int i) throws RemoteException;

    void hangupWaitingOrBackground(int i) throws RemoteException;

    void imsDial(int i, RILImsDial rILImsDial) throws RemoteException;

    void imsRequest(int i, int i2, RequestPayload requestPayload) throws RemoteException;

    void informBatteryStatus(int i, int i2) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    void modifyImsCallConfirm(int i, RILImsCallModify rILImsCallModify) throws RemoteException;

    void modifyImsCallInitiate(int i, RILImsCallModify rILImsCallModify) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    void rejectCall(int i) throws RemoteException;

    void rejectCallWithReason(int i, int i2, int i3) throws RemoteException;

    void responseAcknowledgement() throws RemoteException;

    void restartRILD(int i) throws RemoteException;

    void sendDtmf(int i, String str) throws RemoteException;

    void setClir(int i, int i2) throws RemoteException;

    void setDmDynamicPram(int i, String str) throws RemoteException;

    void setDmPcscf(int i, String str) throws RemoteException;

    void setDmSmsPsi(int i, String str) throws RemoteException;

    void setDmTimer(int i, String str) throws RemoteException;

    void setEncryptVolteCallSwitch(int i, int i2) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    void setImsCallWaiting(int i, boolean z, int i2) throws RemoteException;

    void setImsRegErrReport(int i, int i2) throws RemoteException;

    void setImsSmsConfig(int i, int i2) throws RemoteException;

    void setImsvtCapability(int i, int i2, int i3) throws RemoteException;

    void setMute(int i, boolean z) throws RemoteException;

    void setResponseFunctionsHuawei(IRadioImsResponse iRadioImsResponse, IRadioImsIndication iRadioImsIndication) throws RemoteException;

    void setVtLlteQualityRptCfg(int i, int i2, int i3) throws RemoteException;

    void setWifiEmergencyAid(int i, String str) throws RemoteException;

    void startDtmf(int i, String str) throws RemoteException;

    void stopDtmf(int i) throws RemoteException;

    void switchImsWaitingOrHoldingAndActiveWithType(int i, int i2) throws RemoteException;

    void switchWaitingOrHoldingAndActive(int i) throws RemoteException;

    void uiccAuth(int i, RILUICCAUTH riluiccauth) throws RemoteException;

    void uiccGbaBootStrap(int i, RILUICCAUTH riluiccauth) throws RemoteException;

    void uiccKsNafAuth(int i, RILUICCKSNAFAUTH riluiccksnafauth) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    void updateUiccFile(int i, RILCURSMUPDATEFILE rilcursmupdatefile) throws RemoteException;

    static IRadioIms asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IRadioIms)) {
            return (IRadioIms) iface;
        }
        IRadioIms proxy = new Proxy(binder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                String descriptor = it.next();
                if (descriptor.equals(kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    static IRadioIms castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IRadioIms getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IRadioIms getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IRadioIms getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IRadioIms getService() throws RemoteException {
        return getService("default");
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class Proxy implements IRadioIms {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.huawei.hardware.radio.ims@2.0::IRadioIms]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setResponseFunctionsHuawei(IRadioImsResponse radioResponse, IRadioImsIndication radioIndication) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeStrongBinder(radioResponse == null ? null : radioResponse.asBinder());
            _hidl_request.writeStrongBinder(radioIndication != null ? radioIndication.asBinder() : null);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void responseAcknowledgement() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void hangup(int serial, int gsmIndex) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(gsmIndex);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void switchWaitingOrHoldingAndActive(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void hangupForegroundResumeBackground(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void hangupWaitingOrBackground(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void conference(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void explicitCallTransfer(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void rejectCall(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void sendDtmf(int serial, String dtmf) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(dtmf);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void startDtmf(int serial, String dtmf) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(dtmf);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void stopDtmf(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setMute(int serial, boolean isMute) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeBool(isMute);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setClir(int serial, int status) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(status);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void restartRILD(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getLastImsCallFailCause(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void acceptImsCall(int serial, int callType) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(callType);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(17, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getImsImpu(int serial, int impuIndex) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(impuIndex);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(18, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void addImsConfMember(int serial, String number) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(number);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(19, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setImsCallWaiting(int serial, boolean isActive, int serviceClass) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeBool(isActive);
            _hidl_request.writeInt32(serviceClass);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(20, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void modifyImsCallInitiate(int serial, RILImsCallModify callModifyInfo) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            callModifyInfo.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(21, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void modifyImsCallConfirm(int serial, RILImsCallModify callModifyInfo) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            callModifyInfo.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(22, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void rejectCallWithReason(int serial, int callIndex, int cause) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(callIndex);
            _hidl_request.writeInt32(cause);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(23, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void uiccAuth(int serial, RILUICCAUTH uiccAuthParam) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            uiccAuthParam.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(24, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void uiccGbaBootStrap(int serial, RILUICCAUTH gbaParam) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            gbaParam.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(25, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void updateUiccFile(int serial, RILCURSMUPDATEFILE uiccUpdateParam) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            uiccUpdateParam.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(26, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getUiccFile(int serial, int uiccType, int fileId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(uiccType);
            _hidl_request.writeInt32(fileId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(27, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void uiccKsNafAuth(int serial, RILUICCKSNAFAUTH ksNafAuthParam) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            ksNafAuthParam.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(28, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setVtLlteQualityRptCfg(int serial, int state, int threshhold) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(state);
            _hidl_request.writeInt32(threshhold);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(29, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setDmPcscf(int serial, String pcscf) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(pcscf);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(30, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setDmDynamicPram(int serial, String dynamicPram) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(dynamicPram);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(31, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setDmTimer(int serial, String timer) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(timer);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(32, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setDmSmsPsi(int serial, String smsPsi) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(smsPsi);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(33, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getDmPcscf(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(34, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getDmDynamicPram(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(35, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getDmTimer(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(36, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getSmsPsi(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(37, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getDmUser(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(38, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void informBatteryStatus(int serial, int status) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(status);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(39, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setImsvtCapability(int serial, int capabilityType, int capabilitySwitch) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(capabilityType);
            _hidl_request.writeInt32(capabilitySwitch);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(40, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setWifiEmergencyAid(int serial, String wifiAid) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeString(wifiAid);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(41, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void switchImsWaitingOrHoldingAndActiveWithType(int serial, int callType) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(callType);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(42, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getVolteImpi(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(43, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getVolteDomain(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(44, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void cancelImsVideoCall(int serial, int callIndex) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(callIndex);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(45, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setImsSmsConfig(int serial, int config) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(config);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(46, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getImsSmsConfig(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(47, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setImsRegErrReport(int serial, int status) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(status);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(48, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void imsDial(int serial, RILImsDial dialInfo) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            dialInfo.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(49, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void getCurrentImsCalls(int serial) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(50, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void setEncryptVolteCallSwitch(int serial, int status) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(status);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(51, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms
        public void imsRequest(int serial, int msgId, RequestPayload payload) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioIms.kInterfaceName);
            _hidl_request.writeInt32(serial);
            _hidl_request.writeInt32(msgId);
            payload.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(52, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256067662, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<String> _hidl_out_descriptors = _hidl_reply.readStringVector();
                return _hidl_out_descriptors;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            _hidl_request.writeNativeHandle(fd);
            _hidl_request.writeStringVector(options);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256131655, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public String interfaceDescriptor() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256136003, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_descriptor = _hidl_reply.readString();
                return _hidl_out_descriptor;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256398152, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<byte[]> _hidl_out_hashchain = new ArrayList<>();
                HwBlob _hidl_blob = _hidl_reply.readBuffer(16L);
                int _hidl_vec_size = _hidl_blob.getInt32(8L);
                HwBlob childBlob = _hidl_reply.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
                _hidl_out_hashchain.clear();
                for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                    byte[] _hidl_vec_element = new byte[32];
                    long _hidl_array_offset_1 = _hidl_index_0 * 32;
                    childBlob.copyToInt8Array(_hidl_array_offset_1, _hidl_vec_element, 32);
                    _hidl_out_hashchain.add(_hidl_vec_element);
                }
                return _hidl_out_hashchain;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public void setHALInstrumentation() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256462420, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public void ping() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256921159, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257049926, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                DebugInfo _hidl_out_info = new DebugInfo();
                _hidl_out_info.readFromParcel(_hidl_reply);
                return _hidl_out_info;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257120595, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static abstract class Stub extends HwBinder implements IRadioIms {
        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRadioIms.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRadioIms.kInterfaceName;
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-117, -87, 113, -19, -82, -39, -94, -71, -63, 8, -92, -37, -58, -38, -91, 12, 43, -79, -125, -39, -19, -40, 74, -1, 126, -102, 2, -5, -84, -23, 126, -118}, new byte[]{-20, Byte.MAX_VALUE, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // vendor.huawei.hardware.radio.ims.V2_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (IRadioIms.kInterfaceName.equals(descriptor)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String serviceName) throws RemoteException {
            registerService(serviceName);
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        public void onTransact(int _hidl_code, HwParcel _hidl_request, HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            boolean _hidl_is_oneway;
            switch (_hidl_code) {
                case 1:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    IRadioImsResponse radioResponse = IRadioImsResponse.asInterface(_hidl_request.readStrongBinder());
                    IRadioImsIndication radioIndication = IRadioImsIndication.asInterface(_hidl_request.readStrongBinder());
                    setResponseFunctionsHuawei(radioResponse, radioIndication);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.send();
                    return;
                case 2:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        responseAcknowledgement();
                        return;
                    }
                case 3:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial = _hidl_request.readInt32();
                        int gsmIndex = _hidl_request.readInt32();
                        hangup(serial, gsmIndex);
                        return;
                    }
                case 4:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial2 = _hidl_request.readInt32();
                        switchWaitingOrHoldingAndActive(serial2);
                        return;
                    }
                case 5:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial3 = _hidl_request.readInt32();
                        hangupForegroundResumeBackground(serial3);
                        return;
                    }
                case 6:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial4 = _hidl_request.readInt32();
                        hangupWaitingOrBackground(serial4);
                        return;
                    }
                case 7:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial5 = _hidl_request.readInt32();
                        conference(serial5);
                        return;
                    }
                case 8:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial6 = _hidl_request.readInt32();
                        explicitCallTransfer(serial6);
                        return;
                    }
                case 9:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial7 = _hidl_request.readInt32();
                        rejectCall(serial7);
                        return;
                    }
                case 10:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial8 = _hidl_request.readInt32();
                        String dtmf = _hidl_request.readString();
                        sendDtmf(serial8, dtmf);
                        return;
                    }
                case 11:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial9 = _hidl_request.readInt32();
                        String dtmf2 = _hidl_request.readString();
                        startDtmf(serial9, dtmf2);
                        return;
                    }
                case 12:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial10 = _hidl_request.readInt32();
                        stopDtmf(serial10);
                        return;
                    }
                case 13:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial11 = _hidl_request.readInt32();
                        boolean isMute = _hidl_request.readBool();
                        setMute(serial11, isMute);
                        return;
                    }
                case 14:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial12 = _hidl_request.readInt32();
                        int status = _hidl_request.readInt32();
                        setClir(serial12, status);
                        return;
                    }
                case 15:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial13 = _hidl_request.readInt32();
                        restartRILD(serial13);
                        return;
                    }
                case 16:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial14 = _hidl_request.readInt32();
                        getLastImsCallFailCause(serial14);
                        return;
                    }
                case 17:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial15 = _hidl_request.readInt32();
                        int callType = _hidl_request.readInt32();
                        acceptImsCall(serial15, callType);
                        return;
                    }
                case 18:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial16 = _hidl_request.readInt32();
                        int impuIndex = _hidl_request.readInt32();
                        getImsImpu(serial16, impuIndex);
                        return;
                    }
                case 19:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial17 = _hidl_request.readInt32();
                        String number = _hidl_request.readString();
                        addImsConfMember(serial17, number);
                        return;
                    }
                case 20:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial18 = _hidl_request.readInt32();
                    boolean isActive = _hidl_request.readBool();
                    int serviceClass = _hidl_request.readInt32();
                    setImsCallWaiting(serial18, isActive, serviceClass);
                    return;
                case 21:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial19 = _hidl_request.readInt32();
                    RILImsCallModify callModifyInfo = new RILImsCallModify();
                    callModifyInfo.readFromParcel(_hidl_request);
                    modifyImsCallInitiate(serial19, callModifyInfo);
                    return;
                case 22:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial20 = _hidl_request.readInt32();
                    RILImsCallModify callModifyInfo2 = new RILImsCallModify();
                    callModifyInfo2.readFromParcel(_hidl_request);
                    modifyImsCallConfirm(serial20, callModifyInfo2);
                    return;
                case 23:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial21 = _hidl_request.readInt32();
                    int callIndex = _hidl_request.readInt32();
                    int cause = _hidl_request.readInt32();
                    rejectCallWithReason(serial21, callIndex, cause);
                    return;
                case 24:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial22 = _hidl_request.readInt32();
                    RILUICCAUTH uiccAuthParam = new RILUICCAUTH();
                    uiccAuthParam.readFromParcel(_hidl_request);
                    uiccAuth(serial22, uiccAuthParam);
                    return;
                case 25:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial23 = _hidl_request.readInt32();
                    RILUICCAUTH gbaParam = new RILUICCAUTH();
                    gbaParam.readFromParcel(_hidl_request);
                    uiccGbaBootStrap(serial23, gbaParam);
                    return;
                case 26:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial24 = _hidl_request.readInt32();
                    RILCURSMUPDATEFILE uiccUpdateParam = new RILCURSMUPDATEFILE();
                    uiccUpdateParam.readFromParcel(_hidl_request);
                    updateUiccFile(serial24, uiccUpdateParam);
                    return;
                case 27:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial25 = _hidl_request.readInt32();
                    int uiccType = _hidl_request.readInt32();
                    int fileId = _hidl_request.readInt32();
                    getUiccFile(serial25, uiccType, fileId);
                    return;
                case 28:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial26 = _hidl_request.readInt32();
                    RILUICCKSNAFAUTH ksNafAuthParam = new RILUICCKSNAFAUTH();
                    ksNafAuthParam.readFromParcel(_hidl_request);
                    uiccKsNafAuth(serial26, ksNafAuthParam);
                    return;
                case 29:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial27 = _hidl_request.readInt32();
                    int state = _hidl_request.readInt32();
                    int threshhold = _hidl_request.readInt32();
                    setVtLlteQualityRptCfg(serial27, state, threshhold);
                    return;
                case 30:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial28 = _hidl_request.readInt32();
                        String pcscf = _hidl_request.readString();
                        setDmPcscf(serial28, pcscf);
                        return;
                    }
                case 31:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial29 = _hidl_request.readInt32();
                        String dynamicPram = _hidl_request.readString();
                        setDmDynamicPram(serial29, dynamicPram);
                        return;
                    }
                case 32:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial30 = _hidl_request.readInt32();
                        String timer = _hidl_request.readString();
                        setDmTimer(serial30, timer);
                        return;
                    }
                case 33:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial31 = _hidl_request.readInt32();
                        String smsPsi = _hidl_request.readString();
                        setDmSmsPsi(serial31, smsPsi);
                        return;
                    }
                case LastCallFailCause.CONGESTION /* 34 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial32 = _hidl_request.readInt32();
                        getDmPcscf(serial32);
                        return;
                    }
                case 35:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial33 = _hidl_request.readInt32();
                        getDmDynamicPram(serial33);
                        return;
                    }
                case RadioError.LCE_NOT_SUPPORTED /* 36 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial34 = _hidl_request.readInt32();
                        getDmTimer(serial34);
                        return;
                    }
                case RadioError.NO_MEMORY /* 37 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial35 = _hidl_request.readInt32();
                        getSmsPsi(serial35);
                        return;
                    }
                case 38:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial36 = _hidl_request.readInt32();
                        getDmUser(serial36);
                        return;
                    }
                case RadioError.SYSTEM_ERR /* 39 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial37 = _hidl_request.readInt32();
                        int status2 = _hidl_request.readInt32();
                        informBatteryStatus(serial37, status2);
                        return;
                    }
                case RadioError.MODEM_ERR /* 40 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial38 = _hidl_request.readInt32();
                    int capabilityType = _hidl_request.readInt32();
                    int capabilitySwitch = _hidl_request.readInt32();
                    setImsvtCapability(serial38, capabilityType, capabilitySwitch);
                    return;
                case 41:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial39 = _hidl_request.readInt32();
                        String wifiAid = _hidl_request.readString();
                        setWifiEmergencyAid(serial39, wifiAid);
                        return;
                    }
                case 42:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial40 = _hidl_request.readInt32();
                        int callType2 = _hidl_request.readInt32();
                        switchImsWaitingOrHoldingAndActiveWithType(serial40, callType2);
                        return;
                    }
                case 43:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial41 = _hidl_request.readInt32();
                        getVolteImpi(serial41);
                        return;
                    }
                case 44:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial42 = _hidl_request.readInt32();
                        getVolteDomain(serial42);
                        return;
                    }
                case RadioError.INVALID_SIM_STATE /* 45 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial43 = _hidl_request.readInt32();
                        int callIndex2 = _hidl_request.readInt32();
                        cancelImsVideoCall(serial43, callIndex2);
                        return;
                    }
                case RadioError.INVALID_MODEM_STATE /* 46 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial44 = _hidl_request.readInt32();
                        int config = _hidl_request.readInt32();
                        setImsSmsConfig(serial44, config);
                        return;
                    }
                case 47:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial45 = _hidl_request.readInt32();
                        getImsSmsConfig(serial45);
                        return;
                    }
                case 48:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial46 = _hidl_request.readInt32();
                        int status3 = _hidl_request.readInt32();
                        setImsRegErrReport(serial46, status3);
                        return;
                    }
                case 49:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial47 = _hidl_request.readInt32();
                    RILImsDial dialInfo = new RILImsDial();
                    dialInfo.readFromParcel(_hidl_request);
                    imsDial(serial47, dialInfo);
                    return;
                case 50:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial48 = _hidl_request.readInt32();
                        getCurrentImsCalls(serial48);
                        return;
                    }
                case RadioError.SIM_BUSY /* 51 */:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                        int serial49 = _hidl_request.readInt32();
                        int status4 = _hidl_request.readInt32();
                        setEncryptVolteCallSwitch(serial49, status4);
                        return;
                    }
                case 52:
                    if (!((_hidl_flags & 1) != 0)) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioIms.kInterfaceName);
                    int serial50 = _hidl_request.readInt32();
                    int msgId = _hidl_request.readInt32();
                    RequestPayload payload = new RequestPayload();
                    payload.readFromParcel(_hidl_request);
                    imsRequest(serial50, msgId, payload);
                    return;
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<String> _hidl_out_descriptors = interfaceChain();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeStringVector(_hidl_out_descriptors);
                            _hidl_reply.send();
                            return;
                        case 256131655:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            NativeHandle fd = _hidl_request.readNativeHandle();
                            ArrayList<String> options = _hidl_request.readStringVector();
                            debug(fd, options);
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.send();
                            return;
                        case 256136003:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            String _hidl_out_descriptor = interfaceDescriptor();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeString(_hidl_out_descriptor);
                            _hidl_reply.send();
                            return;
                        case 256398152:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                            _hidl_reply.writeStatus(0);
                            HwBlob _hidl_blob = new HwBlob(16);
                            int _hidl_vec_size = _hidl_out_hashchain.size();
                            _hidl_blob.putInt32(8L, _hidl_vec_size);
                            _hidl_blob.putBool(12L, false);
                            HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                byte[] _hidl_array_item_1 = _hidl_out_hashchain.get(_hidl_index_0);
                                if (_hidl_array_item_1 == null || _hidl_array_item_1.length != 32) {
                                    throw new IllegalArgumentException("Array element is not of the expected length");
                                }
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_array_item_1);
                            }
                            _hidl_blob.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            if (!((_hidl_flags & 1) != 0)) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                ping();
                                _hidl_reply.writeStatus(0);
                                _hidl_reply.send();
                                return;
                            }
                        case 257049926:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            DebugInfo _hidl_out_info = getDebugInfo();
                            _hidl_reply.writeStatus(0);
                            _hidl_out_info.writeToParcel(_hidl_reply);
                            _hidl_reply.send();
                            return;
                        case 257120595:
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }
    }
}

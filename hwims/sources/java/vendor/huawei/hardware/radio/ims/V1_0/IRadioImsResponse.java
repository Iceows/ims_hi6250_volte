package vendor.huawei.hardware.radio.ims.V1_0;

import android.hidl.base.V1_0.DebugInfo;
import android.hidl.base.V1_0.IBase;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public interface IRadioImsResponse extends IBase {
    public static final String kInterfaceName = "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse";

    void RspMsg(RadioResponseInfo radioResponseInfo, int i, RspMsgPayload rspMsgPayload) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    void conferenceResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void explicitCallTransferResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void getCurrentImsCallsResponse(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCall> arrayList) throws RemoteException;

    void getCurrentImsCallsResponseV1_2(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallV1_2> arrayList) throws RemoteException;

    void getCurrentImsCallsWithImsDomainResponse(RadioResponseInfo radioResponseInfo, ArrayList<RILImsCallEx> arrayList) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    void getImsRegistrationStateResponse(RadioResponseInfo radioResponseInfo, boolean z, int i) throws RemoteException;

    void getLastCallFailCauseResponse(RadioResponseInfo radioResponseInfo, LastCallFailCauseInfo lastCallFailCauseInfo) throws RemoteException;

    void hangupConnectionResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void hangupForegroundResumeBackgroundResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void hangupWaitingOrBackgroundResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    void rejectCallResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void sendDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void setClirResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    void setImsRegErrReportResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void setMuteResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void startDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void stopDtmfResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo radioResponseInfo) throws RemoteException;

    void uiccAuthResponse(RadioResponseInfo radioResponseInfo, RILUICCAUTHRESPONSE riluiccauthresponse) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IRadioImsResponse asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IRadioImsResponse)) {
            return (IRadioImsResponse) iface;
        }
        IRadioImsResponse proxy = new Proxy(binder);
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

    static IRadioImsResponse castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IRadioImsResponse getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IRadioImsResponse getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IRadioImsResponse getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IRadioImsResponse getService() throws RemoteException {
        return getService("default");
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static final class Proxy implements IRadioImsResponse {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void hangupConnectionResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void getImsRegistrationStateResponse(RadioResponseInfo info, boolean isRegistered, int ratFamily) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            _hidl_request.writeBool(isRegistered);
            _hidl_request.writeInt32(ratFamily);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void switchWaitingOrHoldingAndActiveResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void hangupForegroundResumeBackgroundResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void hangupWaitingOrBackgroundResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void conferenceResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void explicitCallTransferResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void rejectCallResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void sendDtmfResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void startDtmfResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void stopDtmfResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void setMuteResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void setClirResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void getLastCallFailCauseResponse(RadioResponseInfo info, LastCallFailCauseInfo failCauseinfo) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            failCauseinfo.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void RspMsg(RadioResponseInfo info, int msgId, RspMsgPayload payload) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            _hidl_request.writeInt32(msgId);
            payload.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void getCurrentImsCallsResponse(RadioResponseInfo info, ArrayList<RILImsCall> imsCalls) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            RILImsCall.writeVectorToParcel(_hidl_request, imsCalls);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void uiccAuthResponse(RadioResponseInfo info, RILUICCAUTHRESPONSE uiccAuthRst) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            uiccAuthRst.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(17, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void getCurrentImsCallsWithImsDomainResponse(RadioResponseInfo info, ArrayList<RILImsCallEx> imsCalls) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            RILImsCallEx.writeVectorToParcel(_hidl_request, imsCalls);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(18, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void getCurrentImsCallsResponseV1_2(RadioResponseInfo info, ArrayList<RILImsCallV1_2> imsCalls) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            RILImsCallV1_2.writeVectorToParcel(_hidl_request, imsCalls);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(19, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse
        public void setImsRegErrReportResponse(RadioResponseInfo info) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsResponse.kInterfaceName);
            info.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(20, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                int _hidl_index_0 = 0;
                this.mRemote.transact(256398152, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<byte[]> _hidl_out_hashchain = new ArrayList<>();
                HwBlob _hidl_blob = _hidl_reply.readBuffer(16L);
                int _hidl_vec_size = _hidl_blob.getInt32(8L);
                HwBlob childBlob = _hidl_reply.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
                _hidl_out_hashchain.clear();
                while (true) {
                    int _hidl_index_02 = _hidl_index_0;
                    if (_hidl_index_02 >= _hidl_vec_size) {
                        return _hidl_out_hashchain;
                    }
                    byte[] _hidl_vec_element = new byte[32];
                    long _hidl_array_offset_1 = _hidl_index_02 * 32;
                    childBlob.copyToInt8Array(_hidl_array_offset_1, _hidl_vec_element, 32);
                    _hidl_out_hashchain.add(_hidl_vec_element);
                    _hidl_index_0 = _hidl_index_02 + 1;
                }
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static abstract class Stub extends HwBinder implements IRadioImsResponse {
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRadioImsResponse.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRadioImsResponse.kInterfaceName;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-43, -102, 7, -4, 56, -126, 14, -4, 40, Byte.MIN_VALUE, 86, -32, -15, -61, -9, 105, 16, 47, 2, -76, -113, 109, 4, 114, 73, -18, -115, -91, 69, 21, 30, -67}, new byte[]{-67, -38, -74, 24, 77, 122, 52, 109, -90, -96, 125, -64, -126, -116, -15, -102, 105, 111, 76, -86, 54, 17, -59, 31, 46, 20, 86, 90, 20, -76, 15, -39}));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsResponse, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String descriptor) {
            if (IRadioImsResponse.kInterfaceName.equals(descriptor)) {
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

        @Override // android.os.HwBinder
        public void onTransact(int _hidl_code, HwParcel _hidl_request, HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            boolean _hidl_is_oneway;
            switch (_hidl_code) {
                case 1:
                    int ratFamily = _hidl_flags & 1;
                    _hidl_index_0 = ratFamily != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info = new RadioResponseInfo();
                        info.readFromParcel(_hidl_request);
                        hangupConnectionResponse(info);
                        return;
                    }
                case 2:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info2 = new RadioResponseInfo();
                    info2.readFromParcel(_hidl_request);
                    boolean isRegistered = _hidl_request.readBool();
                    int ratFamily2 = _hidl_request.readInt32();
                    getImsRegistrationStateResponse(info2, isRegistered, ratFamily2);
                    return;
                case 3:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info3 = new RadioResponseInfo();
                        info3.readFromParcel(_hidl_request);
                        switchWaitingOrHoldingAndActiveResponse(info3);
                        return;
                    }
                case 4:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info4 = new RadioResponseInfo();
                        info4.readFromParcel(_hidl_request);
                        hangupForegroundResumeBackgroundResponse(info4);
                        return;
                    }
                case 5:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info5 = new RadioResponseInfo();
                        info5.readFromParcel(_hidl_request);
                        hangupWaitingOrBackgroundResponse(info5);
                        return;
                    }
                case 6:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info6 = new RadioResponseInfo();
                        info6.readFromParcel(_hidl_request);
                        conferenceResponse(info6);
                        return;
                    }
                case 7:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info7 = new RadioResponseInfo();
                        info7.readFromParcel(_hidl_request);
                        explicitCallTransferResponse(info7);
                        return;
                    }
                case 8:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info8 = new RadioResponseInfo();
                        info8.readFromParcel(_hidl_request);
                        rejectCallResponse(info8);
                        return;
                    }
                case 9:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info9 = new RadioResponseInfo();
                        info9.readFromParcel(_hidl_request);
                        sendDtmfResponse(info9);
                        return;
                    }
                case 10:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info10 = new RadioResponseInfo();
                        info10.readFromParcel(_hidl_request);
                        startDtmfResponse(info10);
                        return;
                    }
                case 11:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info11 = new RadioResponseInfo();
                        info11.readFromParcel(_hidl_request);
                        stopDtmfResponse(info11);
                        return;
                    }
                case 12:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info12 = new RadioResponseInfo();
                        info12.readFromParcel(_hidl_request);
                        setMuteResponse(info12);
                        return;
                    }
                case 13:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info13 = new RadioResponseInfo();
                        info13.readFromParcel(_hidl_request);
                        setClirResponse(info13);
                        return;
                    }
                case 14:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info14 = new RadioResponseInfo();
                    info14.readFromParcel(_hidl_request);
                    LastCallFailCauseInfo failCauseinfo = new LastCallFailCauseInfo();
                    failCauseinfo.readFromParcel(_hidl_request);
                    getLastCallFailCauseResponse(info14, failCauseinfo);
                    return;
                case 15:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info15 = new RadioResponseInfo();
                    info15.readFromParcel(_hidl_request);
                    int msgId = _hidl_request.readInt32();
                    RspMsgPayload payload = new RspMsgPayload();
                    payload.readFromParcel(_hidl_request);
                    RspMsg(info15, msgId, payload);
                    return;
                case 16:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info16 = new RadioResponseInfo();
                    info16.readFromParcel(_hidl_request);
                    ArrayList<RILImsCall> imsCalls = RILImsCall.readVectorFromParcel(_hidl_request);
                    getCurrentImsCallsResponse(info16, imsCalls);
                    return;
                case 17:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info17 = new RadioResponseInfo();
                    info17.readFromParcel(_hidl_request);
                    RILUICCAUTHRESPONSE uiccAuthRst = new RILUICCAUTHRESPONSE();
                    uiccAuthRst.readFromParcel(_hidl_request);
                    uiccAuthResponse(info17, uiccAuthRst);
                    return;
                case 18:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info18 = new RadioResponseInfo();
                    info18.readFromParcel(_hidl_request);
                    ArrayList<RILImsCallEx> imsCalls2 = RILImsCallEx.readVectorFromParcel(_hidl_request);
                    getCurrentImsCallsWithImsDomainResponse(info18, imsCalls2);
                    return;
                case 19:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                    RadioResponseInfo info19 = new RadioResponseInfo();
                    info19.readFromParcel(_hidl_request);
                    ArrayList<RILImsCallV1_2> imsCalls3 = RILImsCallV1_2.readVectorFromParcel(_hidl_request);
                    getCurrentImsCallsResponseV1_2(info19, imsCalls3);
                    return;
                case 20:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsResponse.kInterfaceName);
                        RadioResponseInfo info20 = new RadioResponseInfo();
                        info20.readFromParcel(_hidl_request);
                        setImsRegErrReportResponse(info20);
                        return;
                    }
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
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
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                _hidl_reply.writeStatus(0);
                                _hidl_reply.send();
                                return;
                            }
                        case 256136003:
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
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
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
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
                            while (_hidl_index_0 < _hidl_vec_size) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_out_hashchain.get(_hidl_index_0));
                                _hidl_index_0++;
                            }
                            _hidl_blob.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                            if (_hidl_index_0 != 1) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                            if (_hidl_index_0 != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
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
                            _hidl_is_oneway = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway) {
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
                            _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                            if (_hidl_index_0 != 1) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                            if (_hidl_index_0 != 0) {
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

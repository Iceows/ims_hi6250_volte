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
public interface IRadioImsIndication extends IBase {
    public static final String kInterfaceName = "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication";

    void UnsolMsg(int i, int i2, RILUnsolMsgPayload rILUnsolMsgPayload) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    @Override // android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    void imsCallModifyEndCauseInd(int i, RILImsModifyEndCause rILImsModifyEndCause) throws RemoteException;

    void imsCallModifyInd(int i, RILImsCallModify rILImsCallModify) throws RemoteException;

    void imsCallMtStatusInd(int i, RILImsMtStatusReport rILImsMtStatusReport) throws RemoteException;

    void imsHandoverInd(int i, RILImsHandover rILImsHandover) throws RemoteException;

    void imsNetworkStateChanged(int i) throws RemoteException;

    void imsRegErrRptInd(int i, RILImsRegErrReport rILImsRegErrReport) throws RemoteException;

    void imsSrvStatusInd(int i, RILImsSrvstatusList rILImsSrvstatusList) throws RemoteException;

    void imsSuppSrvInd(int i, RILImsSuppSvcNotification rILImsSuppSvcNotification) throws RemoteException;

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

    @Override // android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    void vtFlowInfoReport(int i, RILVtFlowInfoReport rILVtFlowInfoReport) throws RemoteException;

    static IRadioImsIndication asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IRadioImsIndication)) {
            return (IRadioImsIndication) iface;
        }
        IRadioImsIndication proxy = new Proxy(binder);
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

    static IRadioImsIndication castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IRadioImsIndication getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IRadioImsIndication getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IRadioImsIndication getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IRadioImsIndication getService() throws RemoteException {
        return getService("default");
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static final class Proxy implements IRadioImsIndication {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsNetworkStateChanged(int type) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void UnsolMsg(int type, int MsgId, RILUnsolMsgPayload payload) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            _hidl_request.writeInt32(MsgId);
            payload.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsHandoverInd(int type, RILImsHandover imsHandover) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsHandover.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsSrvStatusInd(int type, RILImsSrvstatusList imsHandover) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsHandover.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsSuppSrvInd(int type, RILImsSuppSvcNotification imsSuppSvcNofitication) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsSuppSvcNofitication.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallModifyInd(int type, RILImsCallModify imsCallModify) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsCallModify.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallModifyEndCauseInd(int type, RILImsModifyEndCause imsModifyEndCause) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsModifyEndCause.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallMtStatusInd(int type, RILImsMtStatusReport imsCallMtStatus) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsCallMtStatus.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void vtFlowInfoReport(int type, RILVtFlowInfoReport vtFlowInfo) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            vtFlowInfo.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsRegErrRptInd(int type, RILImsRegErrReport imsRegErrRpt) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            _hidl_request.writeInt32(type);
            imsRegErrRpt.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static abstract class Stub extends HwBinder implements IRadioImsIndication {
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRadioImsIndication.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRadioImsIndication.kInterfaceName;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-94, -127, -81, -110, 63, -4, 2, -78, 61, 82, 73, 5, -104, -3, 122, 63, -104, -91, 33, -43, 58, 83, 65, 53, -125, 88, -107, 41, 62, -62, -108, 102}, new byte[]{-67, -38, -74, 24, 77, 122, 52, 109, -90, -96, 125, -64, -126, -116, -15, -102, 105, 111, 76, -86, 54, 17, -59, 31, 46, 20, 86, 90, 20, -76, 15, -39}));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String descriptor) {
            if (IRadioImsIndication.kInterfaceName.equals(descriptor)) {
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
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                        int type = _hidl_request.readInt32();
                        imsNetworkStateChanged(type);
                        return;
                    }
                case 2:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type2 = _hidl_request.readInt32();
                    int MsgId = _hidl_request.readInt32();
                    RILUnsolMsgPayload payload = new RILUnsolMsgPayload();
                    payload.readFromParcel(_hidl_request);
                    UnsolMsg(type2, MsgId, payload);
                    return;
                case 3:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type3 = _hidl_request.readInt32();
                    RILImsHandover imsHandover = new RILImsHandover();
                    imsHandover.readFromParcel(_hidl_request);
                    imsHandoverInd(type3, imsHandover);
                    return;
                case 4:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type4 = _hidl_request.readInt32();
                    RILImsSrvstatusList imsHandover2 = new RILImsSrvstatusList();
                    imsHandover2.readFromParcel(_hidl_request);
                    imsSrvStatusInd(type4, imsHandover2);
                    return;
                case 5:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type5 = _hidl_request.readInt32();
                    RILImsSuppSvcNotification imsSuppSvcNofitication = new RILImsSuppSvcNotification();
                    imsSuppSvcNofitication.readFromParcel(_hidl_request);
                    imsSuppSrvInd(type5, imsSuppSvcNofitication);
                    return;
                case 6:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type6 = _hidl_request.readInt32();
                    RILImsCallModify imsCallModify = new RILImsCallModify();
                    imsCallModify.readFromParcel(_hidl_request);
                    imsCallModifyInd(type6, imsCallModify);
                    return;
                case 7:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type7 = _hidl_request.readInt32();
                    RILImsModifyEndCause imsModifyEndCause = new RILImsModifyEndCause();
                    imsModifyEndCause.readFromParcel(_hidl_request);
                    imsCallModifyEndCauseInd(type7, imsModifyEndCause);
                    return;
                case 8:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type8 = _hidl_request.readInt32();
                    RILImsMtStatusReport imsCallMtStatus = new RILImsMtStatusReport();
                    imsCallMtStatus.readFromParcel(_hidl_request);
                    imsCallMtStatusInd(type8, imsCallMtStatus);
                    return;
                case 9:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type9 = _hidl_request.readInt32();
                    RILVtFlowInfoReport vtFlowInfo = new RILVtFlowInfoReport();
                    vtFlowInfo.readFromParcel(_hidl_request);
                    vtFlowInfoReport(type9, vtFlowInfo);
                    return;
                case 10:
                    _hidl_index_0 = (_hidl_flags & 1) != 0 ? 1 : 0;
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int type10 = _hidl_request.readInt32();
                    RILImsRegErrReport imsRegErrRpt = new RILImsRegErrReport();
                    imsRegErrRpt.readFromParcel(_hidl_request);
                    imsRegErrRptInd(type10, imsRegErrRpt);
                    return;
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

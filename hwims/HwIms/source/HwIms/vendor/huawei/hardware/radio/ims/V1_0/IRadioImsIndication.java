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

/* loaded from: IRadioImsIndication.class */
public interface IRadioImsIndication extends IBase {
    public static final String kInterfaceName = "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication";

    /* loaded from: IRadioImsIndication$Proxy.class */
    public static final class Proxy implements IRadioImsIndication {
        private IHwBinder mRemote;

        public Proxy(IHwBinder iHwBinder) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(iHwBinder);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void UnsolMsg(int i, int i2, RILUnsolMsgPayload rILUnsolMsgPayload) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            rILUnsolMsgPayload.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(2, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public final boolean equals(Object obj) {
            return HidlSupport.interfacesEqual(this, obj);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(257049926, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                DebugInfo debugInfo = new DebugInfo();
                debugInfo.readFromParcel(hwParcel2);
                return debugInfo;
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256398152, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                ArrayList<byte[]> arrayList = new ArrayList<>();
                HwBlob readBuffer = hwParcel2.readBuffer(16L);
                int int32 = readBuffer.getInt32(8L);
                HwBlob readEmbeddedBuffer = hwParcel2.readEmbeddedBuffer(int32 * 32, readBuffer.handle(), 0L, true);
                arrayList.clear();
                for (int i = 0; i < int32; i++) {
                    byte[] bArr = new byte[32];
                    readEmbeddedBuffer.copyToInt8Array(i * 32, bArr, 32);
                    arrayList.add(bArr);
                }
                return arrayList;
            } finally {
                hwParcel2.release();
            }
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallModifyEndCauseInd(int i, RILImsModifyEndCause rILImsModifyEndCause) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsModifyEndCause.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(7, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallModifyInd(int i, RILImsCallModify rILImsCallModify) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsCallModify.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(6, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsCallMtStatusInd(int i, RILImsMtStatusReport rILImsMtStatusReport) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsMtStatusReport.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(8, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsHandoverInd(int i, RILImsHandover rILImsHandover) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsHandover.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(3, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsNetworkStateChanged(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(1, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsRegErrRptInd(int i, RILImsRegErrReport rILImsRegErrReport) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsRegErrReport.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(10, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsSrvStatusInd(int i, RILImsSrvstatusList rILImsSrvstatusList) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsSrvstatusList.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(4, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void imsSuppSrvInd(int i, RILImsSuppSvcNotification rILImsSuppSvcNotification) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsSuppSvcNotification.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(5, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256067662, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readStringVector();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public String interfaceDescriptor() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256136003, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
                return hwParcel2.readString();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException {
            return this.mRemote.linkToDeath(deathRecipient, j);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(257120595, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public void ping() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256921159, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public void setHALInstrumentation() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(256462420, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication]@Proxy";
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(deathRecipient);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication
        public void vtFlowInfoReport(int i, RILVtFlowInfoReport rILVtFlowInfoReport) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioImsIndication.kInterfaceName);
            hwParcel.writeInt32(i);
            rILVtFlowInfoReport.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(9, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }
    }

    /* loaded from: IRadioImsIndication$Stub.class */
    public static abstract class Stub extends HwBinder implements IRadioImsIndication {
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.pid = HidlSupport.getPidIfSharable();
            debugInfo.ptr = 0L;
            debugInfo.arch = 0;
            return debugInfo;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object[], byte[]] */
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{new byte[]{-94, -127, -81, -110, 63, -4, 2, -78, 61, 82, 73, 5, -104, -3, 122, 63, -104, -91, 33, -43, 58, 83, 65, 53, -125, 88, -107, 41, 62, -62, -108, 102}, new byte[]{-67, -38, -74, 24, 77, 122, 52, 109, -90, -96, 125, -64, -126, -116, -15, -102, 105, 111, 76, -86, 54, 17, -59, 31, 46, 20, 86, 90, 20, -76, 15, -39}}));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRadioImsIndication.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRadioImsIndication.kInterfaceName;
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) {
            return true;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.HwBinder
        public void onTransact(int i, HwParcel hwParcel, HwParcel hwParcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    imsNetworkStateChanged(hwParcel.readInt32());
                    return;
                case 2:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt32 = hwParcel.readInt32();
                    int readInt322 = hwParcel.readInt32();
                    RILUnsolMsgPayload rILUnsolMsgPayload = new RILUnsolMsgPayload();
                    rILUnsolMsgPayload.readFromParcel(hwParcel);
                    UnsolMsg(readInt32, readInt322, rILUnsolMsgPayload);
                    return;
                case 3:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt323 = hwParcel.readInt32();
                    RILImsHandover rILImsHandover = new RILImsHandover();
                    rILImsHandover.readFromParcel(hwParcel);
                    imsHandoverInd(readInt323, rILImsHandover);
                    return;
                case 4:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt324 = hwParcel.readInt32();
                    RILImsSrvstatusList rILImsSrvstatusList = new RILImsSrvstatusList();
                    rILImsSrvstatusList.readFromParcel(hwParcel);
                    imsSrvStatusInd(readInt324, rILImsSrvstatusList);
                    return;
                case 5:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt325 = hwParcel.readInt32();
                    RILImsSuppSvcNotification rILImsSuppSvcNotification = new RILImsSuppSvcNotification();
                    rILImsSuppSvcNotification.readFromParcel(hwParcel);
                    imsSuppSrvInd(readInt325, rILImsSuppSvcNotification);
                    return;
                case 6:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt326 = hwParcel.readInt32();
                    RILImsCallModify rILImsCallModify = new RILImsCallModify();
                    rILImsCallModify.readFromParcel(hwParcel);
                    imsCallModifyInd(readInt326, rILImsCallModify);
                    return;
                case 7:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt327 = hwParcel.readInt32();
                    RILImsModifyEndCause rILImsModifyEndCause = new RILImsModifyEndCause();
                    rILImsModifyEndCause.readFromParcel(hwParcel);
                    imsCallModifyEndCauseInd(readInt327, rILImsModifyEndCause);
                    return;
                case 8:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt328 = hwParcel.readInt32();
                    RILImsMtStatusReport rILImsMtStatusReport = new RILImsMtStatusReport();
                    rILImsMtStatusReport.readFromParcel(hwParcel);
                    imsCallMtStatusInd(readInt328, rILImsMtStatusReport);
                    return;
                case 9:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt329 = hwParcel.readInt32();
                    RILVtFlowInfoReport rILVtFlowInfoReport = new RILVtFlowInfoReport();
                    rILVtFlowInfoReport.readFromParcel(hwParcel);
                    vtFlowInfoReport(readInt329, rILVtFlowInfoReport);
                    return;
                case 10:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioImsIndication.kInterfaceName);
                    int readInt3210 = hwParcel.readInt32();
                    RILImsRegErrReport rILImsRegErrReport = new RILImsRegErrReport();
                    rILImsRegErrReport.readFromParcel(hwParcel);
                    imsRegErrRptInd(readInt3210, rILImsRegErrReport);
                    return;
                default:
                    switch (i) {
                        case 256067662:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            ArrayList<String> interfaceChain = interfaceChain();
                            hwParcel2.writeStatus(0);
                            hwParcel2.writeStringVector(interfaceChain);
                            hwParcel2.send();
                            return;
                        case 256131655:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            hwParcel2.writeStatus(0);
                            hwParcel2.send();
                            return;
                        case 256136003:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            String interfaceDescriptor = interfaceDescriptor();
                            hwParcel2.writeStatus(0);
                            hwParcel2.writeString(interfaceDescriptor);
                            hwParcel2.send();
                            return;
                        case 256398152:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> hashChain = getHashChain();
                            hwParcel2.writeStatus(0);
                            HwBlob hwBlob = new HwBlob(16);
                            int size = hashChain.size();
                            hwBlob.putInt32(8L, size);
                            hwBlob.putBool(12L, false);
                            HwBlob hwBlob2 = new HwBlob(size * 32);
                            for (int i3 = 0; i3 < size; i3++) {
                                hwBlob2.putInt8Array(i3 * 32, hashChain.get(i3));
                            }
                            hwBlob.putBlob(0L, hwBlob2);
                            hwParcel2.writeBuffer(hwBlob);
                            hwParcel2.send();
                            return;
                        case 256462420:
                            if (!((i2 & 1) != 0)) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            setHALInstrumentation();
                            return;
                        case 256660548:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            return;
                        case 256921159:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            ping();
                            hwParcel2.writeStatus(0);
                            hwParcel2.send();
                            return;
                        case 257049926:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            DebugInfo debugInfo = getDebugInfo();
                            hwParcel2.writeStatus(0);
                            debugInfo.writeToParcel(hwParcel2);
                            hwParcel2.send();
                            return;
                        case 257120595:
                            if (!((i2 & 1) != 0)) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            hwParcel.enforceInterface(IBase.kInterfaceName);
                            notifySyspropsChanged();
                            return;
                        case 257250372:
                            if ((i2 & 1) != 0) {
                                hwParcel2.writeStatus(Integer.MIN_VALUE);
                                hwParcel2.send();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String str) {
            if (IRadioImsIndication.kInterfaceName.equals(str)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String str) throws RemoteException {
            registerService(str);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioImsIndication, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) {
            return true;
        }
    }

    static IRadioImsIndication asInterface(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface queryLocalInterface = iHwBinder.queryLocalInterface(kInterfaceName);
        if (queryLocalInterface == null || !(queryLocalInterface instanceof IRadioImsIndication)) {
            Proxy proxy = new Proxy(iHwBinder);
            try {
                Iterator<String> it = proxy.interfaceChain().iterator();
                do {
                    if (!it.hasNext()) {
                        return null;
                    }
                } while (!it.next().equals(kInterfaceName));
                return proxy;
            } catch (RemoteException e) {
                return null;
            }
        }
        return (IRadioImsIndication) queryLocalInterface;
    }

    static IRadioImsIndication castFrom(IHwInterface iHwInterface) {
        return iHwInterface == null ? null : asInterface(iHwInterface.asBinder());
    }

    static IRadioImsIndication getService() throws RemoteException {
        return getService("default");
    }

    static IRadioImsIndication getService(String str) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, str));
    }

    static IRadioImsIndication getService(String str, boolean z) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, str, z));
    }

    static IRadioImsIndication getService(boolean z) throws RemoteException {
        return getService("default", z);
    }

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
}

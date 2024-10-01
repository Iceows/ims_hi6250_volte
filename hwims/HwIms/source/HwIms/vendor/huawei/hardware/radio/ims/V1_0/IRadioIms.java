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
import com.huawei.sci.CrsNty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: IRadioIms.class */
public interface IRadioIms extends IBase {
    public static final String kInterfaceName = "vendor.huawei.hardware.radio.ims@1.0::IRadioIms";

    /* loaded from: IRadioIms$Proxy.class */
    public static final class Proxy implements IRadioIms {
        private IHwBinder mRemote;

        public Proxy(IHwBinder iHwBinder) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(iHwBinder);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void acceptImsCall(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(20, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void addImsConfMember(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(22, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void cancelImsVideoCall(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(49, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void conference(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(8, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        public final boolean equals(Object obj) {
            return HidlSupport.interfacesEqual(this, obj);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void explicitCallTransfer(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(9, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getCurrentImsCalls(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(18, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getCurrentImsCallsV1_2(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(52, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getCurrentImsCallsWithImsDomain(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(46, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getDmDynamicPram(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(38, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getDmPcscf(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(37, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getDmTimer(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(39, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getDmUser(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(41, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getImsImpu(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(21, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getImsRegistrationState(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(4, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getImsSmsConfig(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(51, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getLastImsCallFailCause(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(19, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getSmsPsi(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(40, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getUiccFile(int i, int i2, int i3) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            hwParcel.writeInt32(i3);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(30, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getVolteDomain(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(48, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void getVolteImpi(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(47, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void hangup(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(3, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void hangupForegroundResumeBackground(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(6, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void hangupWaitingOrBackground(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(7, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void imsDial(int i, RILImsDial rILImsDial) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsDial.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(17, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void informBatteryStatus(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(42, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException {
            return this.mRemote.linkToDeath(deathRecipient, j);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void modifyImsCallConfirm(int i, RILImsCallModify rILImsCallModify) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsCallModify.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(25, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void modifyImsCallInitiate(int i, RILImsCallModify rILImsCallModify) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            rILImsCallModify.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(24, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void rejectCall(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(10, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void rejectCallWithReason(int i, int i2, int i3) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            hwParcel.writeInt32(i3);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(26, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void responseAcknowledgement() throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(2, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void restartRILD(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(16, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void sendDtmf(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(11, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setClir(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(15, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setDmDynamicPram(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(34, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setDmPcscf(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(33, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setDmSmsPsi(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(36, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setDmTimer(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(35, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setImsCallWaiting(int i, boolean z, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeBool(z);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(23, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setImsRegErrReport(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(53, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setImsSmsConfig(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(50, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setImsvtCapability(int i, int i2, int i3) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            hwParcel.writeInt32(i3);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(43, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setMute(int i, boolean z) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeBool(z);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(14, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setResponseFunctionsHuawei(IRadioImsResponse iRadioImsResponse, IRadioImsIndication iRadioImsIndication) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeStrongBinder(iRadioImsResponse == null ? null : iRadioImsResponse.asBinder());
            hwParcel.writeStrongBinder(iRadioImsIndication == null ? null : iRadioImsIndication.asBinder());
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(1, hwParcel, hwParcel2, 0);
                hwParcel2.verifySuccess();
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setVtLlteQualityRptCfg(int i, int i2, int i3) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            hwParcel.writeInt32(i3);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(32, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void setWifiEmergencyAid(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(44, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void startDtmf(int i, String str) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeString(str);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(12, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void stopDtmf(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(13, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void switchImsWaitingOrHoldingAndActiveWithType(int i, int i2) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            hwParcel.writeInt32(i2);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(45, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void switchWaitingOrHoldingAndActive(int i) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(5, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.huawei.hardware.radio.ims@1.0::IRadioIms]@Proxy";
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void uiccAuth(int i, RILUICCAUTH riluiccauth) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            riluiccauth.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(27, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void uiccGbaBootStrap(int i, RILUICCAUTH riluiccauth) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            riluiccauth.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(28, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void uiccKsNafAuth(int i, RILUICCKSNAFAUTH riluiccksnafauth) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            riluiccksnafauth.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(31, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(deathRecipient);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms
        public void updateUiccFile(int i, RILCURSMUPDATEFILE rilcursmupdatefile) throws RemoteException {
            HwParcel hwParcel = new HwParcel();
            hwParcel.writeInterfaceToken(IRadioIms.kInterfaceName);
            hwParcel.writeInt32(i);
            rilcursmupdatefile.writeToParcel(hwParcel);
            HwParcel hwParcel2 = new HwParcel();
            try {
                this.mRemote.transact(29, hwParcel, hwParcel2, 1);
                hwParcel.releaseTemporaryStorage();
            } finally {
                hwParcel2.release();
            }
        }
    }

    /* loaded from: IRadioIms$Stub.class */
    public static abstract class Stub extends HwBinder implements IRadioIms {
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.pid = HidlSupport.getPidIfSharable();
            debugInfo.ptr = 0L;
            debugInfo.arch = 0;
            return debugInfo;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object[], byte[]] */
        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{new byte[]{15, -6, 20, 51, 39, -83, -112, -86, -19, -120, -22, 48, -46, 99, 105, 12, 63, -66, 28, -66, 54, 0, -111, 90, -116, -3, -14, -32, 32, 16, 93, 9}, new byte[]{-67, -38, -74, 24, 77, 122, 52, 109, -90, -96, 125, -64, -126, -116, -15, -102, 105, 111, 76, -86, 54, 17, -59, 31, 46, 20, 86, 90, 20, -76, 15, -39}}));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRadioIms.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRadioIms.kInterfaceName;
        }

        @Override // android.os.IHwBinder, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) {
            return true;
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.HwBinder
        public void onTransact(int i, HwParcel hwParcel, HwParcel hwParcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    if ((i2 & 1) != 0) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setResponseFunctionsHuawei(IRadioImsResponse.asInterface(hwParcel.readStrongBinder()), IRadioImsIndication.asInterface(hwParcel.readStrongBinder()));
                    hwParcel2.writeStatus(0);
                    hwParcel2.send();
                    return;
                case 2:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    responseAcknowledgement();
                    return;
                case 3:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    hangup(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 4:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getImsRegistrationState(hwParcel.readInt32());
                    return;
                case 5:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    switchWaitingOrHoldingAndActive(hwParcel.readInt32());
                    return;
                case 6:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    hangupForegroundResumeBackground(hwParcel.readInt32());
                    return;
                case 7:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    hangupWaitingOrBackground(hwParcel.readInt32());
                    return;
                case 8:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    conference(hwParcel.readInt32());
                    return;
                case 9:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    explicitCallTransfer(hwParcel.readInt32());
                    return;
                case 10:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    rejectCall(hwParcel.readInt32());
                    return;
                case 11:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    sendDtmf(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 12:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    startDtmf(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 13:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    stopDtmf(hwParcel.readInt32());
                    return;
                case 14:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setMute(hwParcel.readInt32(), hwParcel.readBool());
                    return;
                case 15:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setClir(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 16:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    restartRILD(hwParcel.readInt32());
                    return;
                case 17:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt32 = hwParcel.readInt32();
                    RILImsDial rILImsDial = new RILImsDial();
                    rILImsDial.readFromParcel(hwParcel);
                    imsDial(readInt32, rILImsDial);
                    return;
                case 18:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getCurrentImsCalls(hwParcel.readInt32());
                    return;
                case 19:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getLastImsCallFailCause(hwParcel.readInt32());
                    return;
                case 20:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    acceptImsCall(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 21:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getImsImpu(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 22:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    addImsConfMember(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 23:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setImsCallWaiting(hwParcel.readInt32(), hwParcel.readBool(), hwParcel.readInt32());
                    return;
                case 24:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt322 = hwParcel.readInt32();
                    RILImsCallModify rILImsCallModify = new RILImsCallModify();
                    rILImsCallModify.readFromParcel(hwParcel);
                    modifyImsCallInitiate(readInt322, rILImsCallModify);
                    return;
                case 25:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt323 = hwParcel.readInt32();
                    RILImsCallModify rILImsCallModify2 = new RILImsCallModify();
                    rILImsCallModify2.readFromParcel(hwParcel);
                    modifyImsCallConfirm(readInt323, rILImsCallModify2);
                    return;
                case 26:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    rejectCallWithReason(hwParcel.readInt32(), hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 27:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt324 = hwParcel.readInt32();
                    RILUICCAUTH riluiccauth = new RILUICCAUTH();
                    riluiccauth.readFromParcel(hwParcel);
                    uiccAuth(readInt324, riluiccauth);
                    return;
                case 28:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt325 = hwParcel.readInt32();
                    RILUICCAUTH riluiccauth2 = new RILUICCAUTH();
                    riluiccauth2.readFromParcel(hwParcel);
                    uiccGbaBootStrap(readInt325, riluiccauth2);
                    return;
                case 29:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt326 = hwParcel.readInt32();
                    RILCURSMUPDATEFILE rilcursmupdatefile = new RILCURSMUPDATEFILE();
                    rilcursmupdatefile.readFromParcel(hwParcel);
                    updateUiccFile(readInt326, rilcursmupdatefile);
                    return;
                case 30:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getUiccFile(hwParcel.readInt32(), hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 31:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    int readInt327 = hwParcel.readInt32();
                    RILUICCKSNAFAUTH riluiccksnafauth = new RILUICCKSNAFAUTH();
                    riluiccksnafauth.readFromParcel(hwParcel);
                    uiccKsNafAuth(readInt327, riluiccksnafauth);
                    return;
                case 32:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setVtLlteQualityRptCfg(hwParcel.readInt32(), hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 33:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setDmPcscf(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 34:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setDmDynamicPram(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case CrsNty.EN_CRS_PARM_RECONFIG_REASON_CONF_RECONFIG_REQUEST /* 35 */:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setDmTimer(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 36:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setDmSmsPsi(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 37:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getDmPcscf(hwParcel.readInt32());
                    return;
                case 38:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getDmDynamicPram(hwParcel.readInt32());
                    return;
                case RadioError.SYSTEM_ERR /* 39 */:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getDmTimer(hwParcel.readInt32());
                    return;
                case 40:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getSmsPsi(hwParcel.readInt32());
                    return;
                case 41:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getDmUser(hwParcel.readInt32());
                    return;
                case 42:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    informBatteryStatus(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 43:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setImsvtCapability(hwParcel.readInt32(), hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 44:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setWifiEmergencyAid(hwParcel.readInt32(), hwParcel.readString());
                    return;
                case 45:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    switchImsWaitingOrHoldingAndActiveWithType(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 46:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getCurrentImsCallsWithImsDomain(hwParcel.readInt32());
                    return;
                case 47:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getVolteImpi(hwParcel.readInt32());
                    return;
                case 48:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getVolteDomain(hwParcel.readInt32());
                    return;
                case 49:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    cancelImsVideoCall(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case 50:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setImsSmsConfig(hwParcel.readInt32(), hwParcel.readInt32());
                    return;
                case RadioError.SIM_BUSY /* 51 */:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getImsSmsConfig(hwParcel.readInt32());
                    return;
                case 52:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    getCurrentImsCallsV1_2(hwParcel.readInt32());
                    return;
                case RadioError.NETWORK_REJECT /* 53 */:
                    if (!((i2 & 1) != 0)) {
                        hwParcel2.writeStatus(Integer.MIN_VALUE);
                        hwParcel2.send();
                        return;
                    }
                    hwParcel.enforceInterface(IRadioIms.kInterfaceName);
                    setImsRegErrReport(hwParcel.readInt32(), hwParcel.readInt32());
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

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String str) {
            if (IRadioIms.kInterfaceName.equals(str)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String str) throws RemoteException {
            registerService(str);
        }

        @Override // vendor.huawei.hardware.radio.ims.V1_0.IRadioIms, android.hidl.base.V1_0.IBase
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

    static IRadioIms asInterface(IHwBinder iHwBinder) {
        if (iHwBinder == null) {
            return null;
        }
        IHwInterface queryLocalInterface = iHwBinder.queryLocalInterface(kInterfaceName);
        if (queryLocalInterface == null || !(queryLocalInterface instanceof IRadioIms)) {
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
        return (IRadioIms) queryLocalInterface;
    }

    static IRadioIms castFrom(IHwInterface iHwInterface) {
        return iHwInterface == null ? null : asInterface(iHwInterface.asBinder());
    }

    static IRadioIms getService() throws RemoteException {
        return getService("default");
    }

    static IRadioIms getService(String str) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, str));
    }

    static IRadioIms getService(String str, boolean z) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, str, z));
    }

    static IRadioIms getService(boolean z) throws RemoteException {
        return getService("default", z);
    }

    void acceptImsCall(int i, int i2) throws RemoteException;

    void addImsConfMember(int i, String str) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    void cancelImsVideoCall(int i, int i2) throws RemoteException;

    void conference(int i) throws RemoteException;

    void explicitCallTransfer(int i) throws RemoteException;

    void getCurrentImsCalls(int i) throws RemoteException;

    void getCurrentImsCallsV1_2(int i) throws RemoteException;

    void getCurrentImsCallsWithImsDomain(int i) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    void getDmDynamicPram(int i) throws RemoteException;

    void getDmPcscf(int i) throws RemoteException;

    void getDmTimer(int i) throws RemoteException;

    void getDmUser(int i) throws RemoteException;

    @Override // android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    void getImsImpu(int i, int i2) throws RemoteException;

    void getImsRegistrationState(int i) throws RemoteException;

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
}

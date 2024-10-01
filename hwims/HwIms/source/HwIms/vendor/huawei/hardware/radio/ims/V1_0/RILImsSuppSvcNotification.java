package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsSuppSvcNotification.class */
public final class RILImsSuppSvcNotification {
    public int callForwardReason;
    public int callId;
    public int code;
    public int index;
    public int notificationType;
    public String number = new String();
    public int type;

    public static final ArrayList<RILImsSuppSvcNotification> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsSuppSvcNotification> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 48, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsSuppSvcNotification rILImsSuppSvcNotification = new RILImsSuppSvcNotification();
            rILImsSuppSvcNotification.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 48);
            arrayList.add(rILImsSuppSvcNotification);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsSuppSvcNotification> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 48);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 48);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsSuppSvcNotification.class) {
            RILImsSuppSvcNotification rILImsSuppSvcNotification = (RILImsSuppSvcNotification) obj;
            return this.notificationType == rILImsSuppSvcNotification.notificationType && this.code == rILImsSuppSvcNotification.code && this.callId == rILImsSuppSvcNotification.callId && this.index == rILImsSuppSvcNotification.index && this.type == rILImsSuppSvcNotification.type && HidlSupport.deepEquals(this.number, rILImsSuppSvcNotification.number) && this.callForwardReason == rILImsSuppSvcNotification.callForwardReason;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.notificationType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.code))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.index))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.type))), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callForwardReason))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.notificationType = hwBlob.getInt32(j + 0);
        this.code = hwBlob.getInt32(j + 4);
        this.callId = hwBlob.getInt32(j + 8);
        this.index = hwBlob.getInt32(j + 12);
        this.type = hwBlob.getInt32(j + 16);
        this.number = hwBlob.getString(j + 24);
        hwParcel.readEmbeddedBuffer(this.number.getBytes().length + 1, hwBlob.handle(), j + 24 + 0, false);
        this.callForwardReason = hwBlob.getInt32(j + 40);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(48L), 0L);
    }

    public final String toString() {
        return "{.notificationType = " + this.notificationType + ", .code = " + this.code + ", .callId = " + this.callId + ", .index = " + this.index + ", .type = " + this.type + ", .number = " + this.number + ", .callForwardReason = " + this.callForwardReason + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.notificationType);
        hwBlob.putInt32(4 + j, this.code);
        hwBlob.putInt32(8 + j, this.callId);
        hwBlob.putInt32(12 + j, this.index);
        hwBlob.putInt32(16 + j, this.type);
        hwBlob.putString(24 + j, this.number);
        hwBlob.putInt32(40 + j, this.callForwardReason);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(48);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: RILImsMapconImsaMessage.class */
public final class RILImsMapconImsaMessage {
    public final byte[] msgContext = new byte[4];
    public int msgId;
    public int msgLen;

    public static final ArrayList<RILImsMapconImsaMessage> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsMapconImsaMessage> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 12, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsMapconImsaMessage rILImsMapconImsaMessage = new RILImsMapconImsaMessage();
            rILImsMapconImsaMessage.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 12);
            arrayList.add(rILImsMapconImsaMessage);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsMapconImsaMessage> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 12);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 12);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsMapconImsaMessage.class) {
            RILImsMapconImsaMessage rILImsMapconImsaMessage = (RILImsMapconImsaMessage) obj;
            return this.msgId == rILImsMapconImsaMessage.msgId && this.msgLen == rILImsMapconImsaMessage.msgLen && HidlSupport.deepEquals(this.msgContext, rILImsMapconImsaMessage.msgContext);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.msgId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.msgLen))), Integer.valueOf(HidlSupport.deepHashCode(this.msgContext)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.msgId = hwBlob.getInt32(0 + j);
        this.msgLen = hwBlob.getInt32(4 + j);
        hwBlob.copyToInt8Array(8 + j, this.msgContext, 4);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(12L), 0L);
    }

    public final String toString() {
        return "{.msgId = " + this.msgId + ", .msgLen = " + this.msgLen + ", .msgContext = " + Arrays.toString(this.msgContext) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.msgId);
        hwBlob.putInt32(4 + j, this.msgLen);
        hwBlob.putInt8Array(8 + j, this.msgContext);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(12);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

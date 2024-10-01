package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUnsolMsgPayload.class */
public final class RILUnsolMsgPayload {
    public int nData;
    public final ArrayList<Integer> nDatas = new ArrayList<>();
    public String strData = new String();
    public final ArrayList<String> strDatas = new ArrayList<>();

    public static final ArrayList<RILUnsolMsgPayload> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUnsolMsgPayload> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 56, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUnsolMsgPayload rILUnsolMsgPayload = new RILUnsolMsgPayload();
            rILUnsolMsgPayload.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 56);
            arrayList.add(rILUnsolMsgPayload);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUnsolMsgPayload> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 56);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 56);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILUnsolMsgPayload.class) {
            RILUnsolMsgPayload rILUnsolMsgPayload = (RILUnsolMsgPayload) obj;
            return this.nData == rILUnsolMsgPayload.nData && HidlSupport.deepEquals(this.nDatas, rILUnsolMsgPayload.nDatas) && HidlSupport.deepEquals(this.strData, rILUnsolMsgPayload.strData) && HidlSupport.deepEquals(this.strDatas, rILUnsolMsgPayload.strDatas);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nData))), Integer.valueOf(HidlSupport.deepHashCode(this.nDatas)), Integer.valueOf(HidlSupport.deepHashCode(this.strData)), Integer.valueOf(HidlSupport.deepHashCode(this.strDatas)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.nData = hwBlob.getInt32(j + 0);
        int int32 = hwBlob.getInt32(j + 8 + 8);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 4, hwBlob.handle(), j + 8 + 0, true);
        this.nDatas.clear();
        for (int i = 0; i < int32; i++) {
            this.nDatas.add(Integer.valueOf(readEmbeddedBuffer.getInt32(i * 4)));
        }
        this.strData = hwBlob.getString(j + 24);
        hwParcel.readEmbeddedBuffer(this.strData.getBytes().length + 1, hwBlob.handle(), j + 24 + 0, false);
        int int322 = hwBlob.getInt32(j + 40 + 8);
        HwBlob readEmbeddedBuffer2 = hwParcel.readEmbeddedBuffer(int322 * 16, hwBlob.handle(), j + 40 + 0, true);
        this.strDatas.clear();
        for (int i2 = 0; i2 < int322; i2++) {
            new String();
            String string = readEmbeddedBuffer2.getString(i2 * 16);
            hwParcel.readEmbeddedBuffer(string.getBytes().length + 1, readEmbeddedBuffer2.handle(), (i2 * 16) + 0, false);
            this.strDatas.add(string);
        }
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(56L), 0L);
    }

    public final String toString() {
        return "{.nData = " + this.nData + ", .nDatas = " + this.nDatas + ", .strData = " + this.strData + ", .strDatas = " + this.strDatas + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(j + 0, this.nData);
        int size = this.nDatas.size();
        hwBlob.putInt32(j + 8 + 8, size);
        hwBlob.putBool(j + 8 + 12, false);
        HwBlob hwBlob2 = new HwBlob(size * 4);
        for (int i = 0; i < size; i++) {
            hwBlob2.putInt32(i * 4, this.nDatas.get(i).intValue());
        }
        hwBlob.putBlob(j + 8 + 0, hwBlob2);
        hwBlob.putString(j + 24, this.strData);
        int size2 = this.strDatas.size();
        hwBlob.putInt32(j + 40 + 8, size2);
        hwBlob.putBool(j + 40 + 12, false);
        HwBlob hwBlob3 = new HwBlob(size2 * 16);
        for (int i2 = 0; i2 < size2; i2++) {
            hwBlob3.putString(i2 * 16, this.strDatas.get(i2));
        }
        hwBlob.putBlob(j + 40 + 0, hwBlob3);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(56);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

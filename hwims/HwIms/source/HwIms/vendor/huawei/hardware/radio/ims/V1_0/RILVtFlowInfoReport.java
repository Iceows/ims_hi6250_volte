package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILVtFlowInfoReport.class */
public final class RILVtFlowInfoReport {
    public String currVtTime = new String();
    public String currTxFlow = new String();
    public String currRxFlow = new String();

    public static final ArrayList<RILVtFlowInfoReport> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILVtFlowInfoReport> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 48, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILVtFlowInfoReport rILVtFlowInfoReport = new RILVtFlowInfoReport();
            rILVtFlowInfoReport.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 48);
            arrayList.add(rILVtFlowInfoReport);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILVtFlowInfoReport> arrayList) {
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
        if (obj != null && obj.getClass() == RILVtFlowInfoReport.class) {
            RILVtFlowInfoReport rILVtFlowInfoReport = (RILVtFlowInfoReport) obj;
            return HidlSupport.deepEquals(this.currVtTime, rILVtFlowInfoReport.currVtTime) && HidlSupport.deepEquals(this.currTxFlow, rILVtFlowInfoReport.currTxFlow) && HidlSupport.deepEquals(this.currRxFlow, rILVtFlowInfoReport.currRxFlow);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.currVtTime)), Integer.valueOf(HidlSupport.deepHashCode(this.currTxFlow)), Integer.valueOf(HidlSupport.deepHashCode(this.currRxFlow)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.currVtTime = hwBlob.getString(j + 0);
        hwParcel.readEmbeddedBuffer(this.currVtTime.getBytes().length + 1, hwBlob.handle(), j + 0 + 0, false);
        this.currTxFlow = hwBlob.getString(j + 16);
        hwParcel.readEmbeddedBuffer(this.currTxFlow.getBytes().length + 1, hwBlob.handle(), j + 16 + 0, false);
        this.currRxFlow = hwBlob.getString(j + 32);
        hwParcel.readEmbeddedBuffer(this.currRxFlow.getBytes().length + 1, hwBlob.handle(), j + 32 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(48L), 0L);
    }

    public final String toString() {
        return "{.currVtTime = " + this.currVtTime + ", .currTxFlow = " + this.currTxFlow + ", .currRxFlow = " + this.currRxFlow + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putString(0 + j, this.currVtTime);
        hwBlob.putString(16 + j, this.currTxFlow);
        hwBlob.putString(32 + j, this.currRxFlow);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(48);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

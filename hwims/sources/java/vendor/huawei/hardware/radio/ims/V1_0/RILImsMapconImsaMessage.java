package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILImsMapconImsaMessage {
    public final byte[] msgContext = new byte[4];
    public int msgId;
    public int msgLen;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILImsMapconImsaMessage.class) {
            return false;
        }
        RILImsMapconImsaMessage other = (RILImsMapconImsaMessage) otherObject;
        if (this.msgId == other.msgId && this.msgLen == other.msgLen && HidlSupport.deepEquals(this.msgContext, other.msgContext)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.msgId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.msgLen))), Integer.valueOf(HidlSupport.deepHashCode(this.msgContext)));
    }

    public final String toString() {
        return "{.msgId = " + this.msgId + ", .msgLen = " + this.msgLen + ", .msgContext = " + Arrays.toString(this.msgContext) + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(12L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILImsMapconImsaMessage> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILImsMapconImsaMessage> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 12, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILImsMapconImsaMessage _hidl_vec_element = new RILImsMapconImsaMessage();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 12);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.msgId = _hidl_blob.getInt32(0 + _hidl_offset);
        this.msgLen = _hidl_blob.getInt32(4 + _hidl_offset);
        long _hidl_array_offset_0 = 8 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_0, this.msgContext, 4);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(12);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILImsMapconImsaMessage> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 12);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 12);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.msgId);
        _hidl_blob.putInt32(4 + _hidl_offset, this.msgLen);
        long _hidl_array_offset_0 = 8 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_0, this.msgContext);
    }
}

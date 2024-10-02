package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILImsCallModify {
    public int callIndex;
    public final RILImsCallDetails currCallDetails = new RILImsCallDetails();
    public final RILImsCallDetails destCallDetails = new RILImsCallDetails();
    public int modifyReason;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILImsCallModify.class) {
            return false;
        }
        RILImsCallModify other = (RILImsCallModify) otherObject;
        if (this.callIndex == other.callIndex && HidlSupport.deepEquals(this.currCallDetails, other.currCallDetails) && HidlSupport.deepEquals(this.destCallDetails, other.destCallDetails) && this.modifyReason == other.modifyReason) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callIndex))), Integer.valueOf(HidlSupport.deepHashCode(this.currCallDetails)), Integer.valueOf(HidlSupport.deepHashCode(this.destCallDetails)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.modifyReason))));
    }

    public final String toString() {
        return "{.callIndex = " + this.callIndex + ", .currCallDetails = " + this.currCallDetails + ", .destCallDetails = " + this.destCallDetails + ", .modifyReason = " + this.modifyReason + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(24L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILImsCallModify> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILImsCallModify> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 24, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILImsCallModify _hidl_vec_element = new RILImsCallModify();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 24);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.callIndex = _hidl_blob.getInt32(0 + _hidl_offset);
        this.currCallDetails.readEmbeddedFromParcel(parcel, _hidl_blob, 4 + _hidl_offset);
        this.destCallDetails.readEmbeddedFromParcel(parcel, _hidl_blob, 12 + _hidl_offset);
        this.modifyReason = _hidl_blob.getInt32(20 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(24);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILImsCallModify> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 24);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 24);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.callIndex);
        this.currCallDetails.writeEmbeddedToBlob(_hidl_blob, 4 + _hidl_offset);
        this.destCallDetails.writeEmbeddedToBlob(_hidl_blob, 12 + _hidl_offset);
        _hidl_blob.putInt32(20 + _hidl_offset, this.modifyReason);
    }
}

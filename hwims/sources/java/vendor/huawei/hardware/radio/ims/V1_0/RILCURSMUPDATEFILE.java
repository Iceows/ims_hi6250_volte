package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILCURSMUPDATEFILE {
    public int appType;
    public int fileId;
    public final RILCURSMFILEPARAMS fileParams = new RILCURSMFILEPARAMS();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILCURSMUPDATEFILE.class) {
            return false;
        }
        RILCURSMUPDATEFILE other = (RILCURSMUPDATEFILE) otherObject;
        if (this.appType == other.appType && this.fileId == other.fileId && HidlSupport.deepEquals(this.fileParams, other.fileParams)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.appType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.fileId))), Integer.valueOf(HidlSupport.deepHashCode(this.fileParams)));
    }

    public final String toString() {
        return "{.appType = " + RILCURSMAPPTYPEENUM.toString(this.appType) + ", .fileId = " + this.fileId + ", .fileParams = " + this.fileParams + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(32L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILCURSMUPDATEFILE> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILCURSMUPDATEFILE> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILCURSMUPDATEFILE _hidl_vec_element = new RILCURSMUPDATEFILE();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 32);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.appType = _hidl_blob.getInt32(0 + _hidl_offset);
        this.fileId = _hidl_blob.getInt32(4 + _hidl_offset);
        this.fileParams.readEmbeddedFromParcel(parcel, _hidl_blob, 8 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(32);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILCURSMUPDATEFILE> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 32);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.appType);
        _hidl_blob.putInt32(4 + _hidl_offset, this.fileId);
        this.fileParams.writeEmbeddedToBlob(_hidl_blob, 8 + _hidl_offset);
    }
}

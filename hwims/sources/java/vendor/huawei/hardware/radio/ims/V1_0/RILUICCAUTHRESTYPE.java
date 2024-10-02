package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILUICCAUTHRESTYPE {
    public String res = new String();
    public int resLen;
    public int resPresent;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILUICCAUTHRESTYPE.class) {
            return false;
        }
        RILUICCAUTHRESTYPE other = (RILUICCAUTHRESTYPE) otherObject;
        if (this.resPresent == other.resPresent && this.resLen == other.resLen && HidlSupport.deepEquals(this.res, other.res)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.resPresent))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.resLen))), Integer.valueOf(HidlSupport.deepHashCode(this.res)));
    }

    public final String toString() {
        return "{.resPresent = " + this.resPresent + ", .resLen = " + this.resLen + ", .res = " + this.res + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(24L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILUICCAUTHRESTYPE> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILUICCAUTHRESTYPE> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 24, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILUICCAUTHRESTYPE _hidl_vec_element = new RILUICCAUTHRESTYPE();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 24);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.resPresent = _hidl_blob.getInt32(_hidl_offset + 0);
        this.resLen = _hidl_blob.getInt32(_hidl_offset + 4);
        this.res = _hidl_blob.getString(_hidl_offset + 8);
        parcel.readEmbeddedBuffer(this.res.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 8 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(24);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILUICCAUTHRESTYPE> _hidl_vec) {
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
        _hidl_blob.putInt32(0 + _hidl_offset, this.resPresent);
        _hidl_blob.putInt32(4 + _hidl_offset, this.resLen);
        _hidl_blob.putString(8 + _hidl_offset, this.res);
    }
}

package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILUICCKSNAFAUTHPARAMS {
    public int impiLen;
    public int nafLen;
    public String nafId = new String();
    public String impi = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILUICCKSNAFAUTHPARAMS.class) {
            return false;
        }
        RILUICCKSNAFAUTHPARAMS other = (RILUICCKSNAFAUTHPARAMS) otherObject;
        if (this.nafLen == other.nafLen && HidlSupport.deepEquals(this.nafId, other.nafId) && this.impiLen == other.impiLen && HidlSupport.deepEquals(this.impi, other.impi)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nafLen))), Integer.valueOf(HidlSupport.deepHashCode(this.nafId)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.impiLen))), Integer.valueOf(HidlSupport.deepHashCode(this.impi)));
    }

    public final String toString() {
        return "{.nafLen = " + this.nafLen + ", .nafId = " + this.nafId + ", .impiLen = " + this.impiLen + ", .impi = " + this.impi + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(48L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILUICCKSNAFAUTHPARAMS> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILUICCKSNAFAUTHPARAMS> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 48, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILUICCKSNAFAUTHPARAMS _hidl_vec_element = new RILUICCKSNAFAUTHPARAMS();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 48);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.nafLen = _hidl_blob.getInt32(_hidl_offset + 0);
        this.nafId = _hidl_blob.getString(_hidl_offset + 8);
        parcel.readEmbeddedBuffer(this.nafId.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 8 + 0, false);
        this.impiLen = _hidl_blob.getInt32(_hidl_offset + 24);
        this.impi = _hidl_blob.getString(_hidl_offset + 32);
        parcel.readEmbeddedBuffer(this.impi.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 32 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(48);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILUICCKSNAFAUTHPARAMS> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 48);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 48);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.nafLen);
        _hidl_blob.putString(8 + _hidl_offset, this.nafId);
        _hidl_blob.putInt32(24 + _hidl_offset, this.impiLen);
        _hidl_blob.putString(32 + _hidl_offset, this.impi);
    }
}

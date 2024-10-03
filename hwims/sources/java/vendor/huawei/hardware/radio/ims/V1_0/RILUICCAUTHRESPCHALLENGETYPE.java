package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILUICCAUTHRESPCHALLENGETYPE {
    public final RILUICCAUTHRESTYPE resData = new RILUICCAUTHRESTYPE();
    public final RILUICCAUTHIKTYPE ikData = new RILUICCAUTHIKTYPE();
    public final RILUICCAUTHCKTYPE ckData = new RILUICCAUTHCKTYPE();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILUICCAUTHRESPCHALLENGETYPE.class) {
            return false;
        }
        RILUICCAUTHRESPCHALLENGETYPE other = (RILUICCAUTHRESPCHALLENGETYPE) otherObject;
        if (HidlSupport.deepEquals(this.resData, other.resData) && HidlSupport.deepEquals(this.ikData, other.ikData) && HidlSupport.deepEquals(this.ckData, other.ckData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.resData)), Integer.valueOf(HidlSupport.deepHashCode(this.ikData)), Integer.valueOf(HidlSupport.deepHashCode(this.ckData)));
    }

    public final String toString() {
        return "{.resData = " + this.resData + ", .ikData = " + this.ikData + ", .ckData = " + this.ckData + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(72L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILUICCAUTHRESPCHALLENGETYPE> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILUICCAUTHRESPCHALLENGETYPE> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 72, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILUICCAUTHRESPCHALLENGETYPE _hidl_vec_element = new RILUICCAUTHRESPCHALLENGETYPE();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 72);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.resData.readEmbeddedFromParcel(parcel, _hidl_blob, 0 + _hidl_offset);
        this.ikData.readEmbeddedFromParcel(parcel, _hidl_blob, 24 + _hidl_offset);
        this.ckData.readEmbeddedFromParcel(parcel, _hidl_blob, 48 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(72);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILUICCAUTHRESPCHALLENGETYPE> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 72);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 72);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        this.resData.writeEmbeddedToBlob(_hidl_blob, 0 + _hidl_offset);
        this.ikData.writeEmbeddedToBlob(_hidl_blob, 24 + _hidl_offset);
        this.ckData.writeEmbeddedToBlob(_hidl_blob, 48 + _hidl_offset);
    }
}
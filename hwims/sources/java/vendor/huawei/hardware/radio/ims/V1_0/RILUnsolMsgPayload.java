package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RILUnsolMsgPayload {
    public int nData;
    public final ArrayList<Integer> nDatas = new ArrayList<>();
    public String strData = new String();
    public final ArrayList<String> strDatas = new ArrayList<>();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILUnsolMsgPayload.class) {
            return false;
        }
        RILUnsolMsgPayload other = (RILUnsolMsgPayload) otherObject;
        if (this.nData == other.nData && HidlSupport.deepEquals(this.nDatas, other.nDatas) && HidlSupport.deepEquals(this.strData, other.strData) && HidlSupport.deepEquals(this.strDatas, other.strDatas)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nData))), Integer.valueOf(HidlSupport.deepHashCode(this.nDatas)), Integer.valueOf(HidlSupport.deepHashCode(this.strData)), Integer.valueOf(HidlSupport.deepHashCode(this.strDatas)));
    }

    public final String toString() {
        return "{.nData = " + this.nData + ", .nDatas = " + this.nDatas + ", .strData = " + this.strData + ", .strDatas = " + this.strDatas + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(56L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILUnsolMsgPayload> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILUnsolMsgPayload> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 56, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILUnsolMsgPayload _hidl_vec_element = new RILUnsolMsgPayload();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 56);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.nData = _hidl_blob.getInt32(_hidl_offset + 0);
        int _hidl_vec_size = _hidl_blob.getInt32(_hidl_offset + 8 + 8);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 4, _hidl_blob.handle(), _hidl_offset + 8 + 0, true);
        this.nDatas.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            this.nDatas.add(Integer.valueOf(childBlob.getInt32(_hidl_index_0 * 4)));
        }
        this.strData = _hidl_blob.getString(_hidl_offset + 24);
        parcel.readEmbeddedBuffer(this.strData.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 24 + 0, false);
        int _hidl_vec_size2 = _hidl_blob.getInt32(_hidl_offset + 40 + 8);
        HwBlob childBlob2 = parcel.readEmbeddedBuffer(_hidl_vec_size2 * 16, _hidl_blob.handle(), _hidl_offset + 40 + 0, true);
        this.strDatas.clear();
        for (int _hidl_index_02 = 0; _hidl_index_02 < _hidl_vec_size2; _hidl_index_02++) {
            new String();
            String _hidl_vec_element = childBlob2.getString(_hidl_index_02 * 16);
            parcel.readEmbeddedBuffer(_hidl_vec_element.getBytes().length + 1, childBlob2.handle(), (_hidl_index_02 * 16) + 0, false);
            this.strDatas.add(_hidl_vec_element);
        }
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(56);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILUnsolMsgPayload> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 56);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 56);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(_hidl_offset + 0, this.nData);
        int _hidl_vec_size = this.nDatas.size();
        _hidl_blob.putInt32(_hidl_offset + 8 + 8, _hidl_vec_size);
        _hidl_blob.putBool(_hidl_offset + 8 + 12, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 4);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            childBlob.putInt32(_hidl_index_0 * 4, this.nDatas.get(_hidl_index_0).intValue());
        }
        _hidl_blob.putBlob(_hidl_offset + 8 + 0, childBlob);
        _hidl_blob.putString(_hidl_offset + 24, this.strData);
        int _hidl_vec_size2 = this.strDatas.size();
        _hidl_blob.putInt32(_hidl_offset + 40 + 8, _hidl_vec_size2);
        int _hidl_index_02 = 0;
        _hidl_blob.putBool(_hidl_offset + 40 + 12, false);
        HwBlob childBlob2 = new HwBlob(_hidl_vec_size2 * 16);
        while (true) {
            int _hidl_index_03 = _hidl_index_02;
            if (_hidl_index_03 >= _hidl_vec_size2) {
                _hidl_blob.putBlob(_hidl_offset + 40 + 0, childBlob2);
                return;
            } else {
                childBlob2.putString(_hidl_index_03 * 16, this.strDatas.get(_hidl_index_03));
                _hidl_index_02 = _hidl_index_03 + 1;
            }
        }
    }
}

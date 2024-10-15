package vendor.huawei.hardware.radio.ims.V2_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public final class RILImsDataConnectInd {
    public int addrType;
    public int domain;
    public IpAddrInfo ipAddress = new IpAddrInfo();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RILImsDataConnectInd.class) {
            return false;
        }
        RILImsDataConnectInd other = (RILImsDataConnectInd) otherObject;
        if (this.domain == other.domain && this.addrType == other.addrType && HidlSupport.deepEquals(this.ipAddress, other.ipAddress)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.domain))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.addrType))), Integer.valueOf(HidlSupport.deepHashCode(this.ipAddress)));
    }

    public final String toString() {
        return "{.domain = " + this.domain + ", .addrType = " + RILIpAddrType.toString(this.addrType) + ", .ipAddress = " + this.ipAddress + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(128L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RILImsDataConnectInd> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RILImsDataConnectInd> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 128, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RILImsDataConnectInd _hidl_vec_element = new RILImsDataConnectInd();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 128);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.domain = _hidl_blob.getInt32(0 + _hidl_offset);
        this.addrType = _hidl_blob.getInt32(4 + _hidl_offset);
        this.ipAddress.readEmbeddedFromParcel(parcel, _hidl_blob, 8 + _hidl_offset);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(128);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RILImsDataConnectInd> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 128);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 128);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.domain);
        _hidl_blob.putInt32(4 + _hidl_offset, this.addrType);
        this.ipAddress.writeEmbeddedToBlob(_hidl_blob, 8 + _hidl_offset);
    }
}

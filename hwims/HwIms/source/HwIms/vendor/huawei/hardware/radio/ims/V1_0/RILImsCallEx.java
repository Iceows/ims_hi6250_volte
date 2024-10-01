package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsCallEx.class */
public final class RILImsCallEx {
    public byte als;
    public int imsDomain;
    public int index;
    public int isECOnference;
    public byte isMT;
    public byte isMpty;
    public byte isVoice;
    public byte isVoicePrivacy;
    public int namePresentation;
    public int numberPresentation;
    public int peerVideoSupport;
    public int state;
    public int toa;
    public String number = new String();
    public String name = new String();
    public final RILImsCallDetails callDetails = new RILImsCallDetails();

    public static final ArrayList<RILImsCallEx> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsCallEx> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 88, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsCallEx rILImsCallEx = new RILImsCallEx();
            rILImsCallEx.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 88);
            arrayList.add(rILImsCallEx);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsCallEx> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 88);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 88);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsCallEx.class) {
            RILImsCallEx rILImsCallEx = (RILImsCallEx) obj;
            return this.state == rILImsCallEx.state && this.index == rILImsCallEx.index && this.toa == rILImsCallEx.toa && this.isMpty == rILImsCallEx.isMpty && this.isMT == rILImsCallEx.isMT && this.als == rILImsCallEx.als && this.isVoice == rILImsCallEx.isVoice && this.isVoicePrivacy == rILImsCallEx.isVoicePrivacy && HidlSupport.deepEquals(this.number, rILImsCallEx.number) && this.numberPresentation == rILImsCallEx.numberPresentation && HidlSupport.deepEquals(this.name, rILImsCallEx.name) && this.namePresentation == rILImsCallEx.namePresentation && HidlSupport.deepEquals(this.callDetails, rILImsCallEx.callDetails) && this.isECOnference == rILImsCallEx.isECOnference && this.peerVideoSupport == rILImsCallEx.peerVideoSupport && this.imsDomain == rILImsCallEx.imsDomain;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.state))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.index))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.toa))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isMpty))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isMT))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.als))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isVoice))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isVoicePrivacy))), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.numberPresentation))), Integer.valueOf(HidlSupport.deepHashCode(this.name)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.namePresentation))), Integer.valueOf(HidlSupport.deepHashCode(this.callDetails)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.isECOnference))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.peerVideoSupport))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.imsDomain))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.state = hwBlob.getInt32(j + 0);
        this.index = hwBlob.getInt32(j + 4);
        this.toa = hwBlob.getInt32(j + 8);
        this.isMpty = hwBlob.getInt8(j + 12);
        this.isMT = hwBlob.getInt8(j + 13);
        this.als = hwBlob.getInt8(j + 14);
        this.isVoice = hwBlob.getInt8(j + 15);
        this.isVoicePrivacy = hwBlob.getInt8(j + 16);
        this.number = hwBlob.getString(j + 24);
        hwParcel.readEmbeddedBuffer(this.number.getBytes().length + 1, hwBlob.handle(), j + 24 + 0, false);
        this.numberPresentation = hwBlob.getInt32(j + 40);
        this.name = hwBlob.getString(j + 48);
        hwParcel.readEmbeddedBuffer(this.name.getBytes().length + 1, hwBlob.handle(), j + 48 + 0, false);
        this.namePresentation = hwBlob.getInt32(j + 64);
        this.callDetails.readEmbeddedFromParcel(hwParcel, hwBlob, j + 68);
        this.isECOnference = hwBlob.getInt32(j + 76);
        this.peerVideoSupport = hwBlob.getInt32(j + 80);
        this.imsDomain = hwBlob.getInt32(j + 84);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(88L), 0L);
    }

    public final String toString() {
        return "{.state = " + CallState.toString(this.state) + ", .index = " + this.index + ", .toa = " + this.toa + ", .isMpty = " + ((int) this.isMpty) + ", .isMT = " + ((int) this.isMT) + ", .als = " + ((int) this.als) + ", .isVoice = " + ((int) this.isVoice) + ", .isVoicePrivacy = " + ((int) this.isVoicePrivacy) + ", .number = " + this.number + ", .numberPresentation = " + this.numberPresentation + ", .name = " + this.name + ", .namePresentation = " + this.namePresentation + ", .callDetails = " + this.callDetails + ", .isECOnference = " + this.isECOnference + ", .peerVideoSupport = " + this.peerVideoSupport + ", .imsDomain = " + this.imsDomain + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.state);
        hwBlob.putInt32(4 + j, this.index);
        hwBlob.putInt32(8 + j, this.toa);
        hwBlob.putInt8(12 + j, this.isMpty);
        hwBlob.putInt8(13 + j, this.isMT);
        hwBlob.putInt8(14 + j, this.als);
        hwBlob.putInt8(15 + j, this.isVoice);
        hwBlob.putInt8(16 + j, this.isVoicePrivacy);
        hwBlob.putString(24 + j, this.number);
        hwBlob.putInt32(40 + j, this.numberPresentation);
        hwBlob.putString(48 + j, this.name);
        hwBlob.putInt32(64 + j, this.namePresentation);
        this.callDetails.writeEmbeddedToBlob(hwBlob, 68 + j);
        hwBlob.putInt32(76 + j, this.isECOnference);
        hwBlob.putInt32(80 + j, this.peerVideoSupport);
        hwBlob.putInt32(84 + j, this.imsDomain);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(88);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

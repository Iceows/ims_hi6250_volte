package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsCallV1_2.class */
public final class RILImsCallV1_2 {
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
    public int redirectNumberPresentation;
    public int redirectNumberToa;
    public int state;
    public int toa;
    public String number = new String();
    public String name = new String();
    public final RILImsCallDetails callDetails = new RILImsCallDetails();
    public String redirectNumber = new String();

    public static final ArrayList<RILImsCallV1_2> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsCallV1_2> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 112, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsCallV1_2 rILImsCallV1_2 = new RILImsCallV1_2();
            rILImsCallV1_2.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 112);
            arrayList.add(rILImsCallV1_2);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsCallV1_2> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 112);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 112);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsCallV1_2.class) {
            RILImsCallV1_2 rILImsCallV1_2 = (RILImsCallV1_2) obj;
            return this.state == rILImsCallV1_2.state && this.index == rILImsCallV1_2.index && this.toa == rILImsCallV1_2.toa && this.isMpty == rILImsCallV1_2.isMpty && this.isMT == rILImsCallV1_2.isMT && this.als == rILImsCallV1_2.als && this.isVoice == rILImsCallV1_2.isVoice && this.isVoicePrivacy == rILImsCallV1_2.isVoicePrivacy && HidlSupport.deepEquals(this.number, rILImsCallV1_2.number) && this.numberPresentation == rILImsCallV1_2.numberPresentation && HidlSupport.deepEquals(this.name, rILImsCallV1_2.name) && this.namePresentation == rILImsCallV1_2.namePresentation && HidlSupport.deepEquals(this.callDetails, rILImsCallV1_2.callDetails) && this.isECOnference == rILImsCallV1_2.isECOnference && this.peerVideoSupport == rILImsCallV1_2.peerVideoSupport && this.imsDomain == rILImsCallV1_2.imsDomain && HidlSupport.deepEquals(this.redirectNumber, rILImsCallV1_2.redirectNumber) && this.redirectNumberToa == rILImsCallV1_2.redirectNumberToa && this.redirectNumberPresentation == rILImsCallV1_2.redirectNumberPresentation;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.state))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.index))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.toa))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isMpty))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isMT))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.als))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isVoice))), Integer.valueOf(HidlSupport.deepHashCode(Byte.valueOf(this.isVoicePrivacy))), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.numberPresentation))), Integer.valueOf(HidlSupport.deepHashCode(this.name)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.namePresentation))), Integer.valueOf(HidlSupport.deepHashCode(this.callDetails)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.isECOnference))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.peerVideoSupport))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.imsDomain))), Integer.valueOf(HidlSupport.deepHashCode(this.redirectNumber)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.redirectNumberToa))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.redirectNumberPresentation))));
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
        this.redirectNumber = hwBlob.getString(j + 88);
        hwParcel.readEmbeddedBuffer(this.redirectNumber.getBytes().length + 1, hwBlob.handle(), 0 + j + 88, false);
        this.redirectNumberToa = hwBlob.getInt32(j + 104);
        this.redirectNumberPresentation = hwBlob.getInt32(j + 108);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(112L), 0L);
    }

    public final String toString() {
        return "{.state = " + CallState.toString(this.state) + ", .index = " + this.index + ", .toa = " + this.toa + ", .isMpty = " + ((int) this.isMpty) + ", .isMT = " + ((int) this.isMT) + ", .als = " + ((int) this.als) + ", .isVoice = " + ((int) this.isVoice) + ", .isVoicePrivacy = " + ((int) this.isVoicePrivacy) + ", .number = " + this.number + ", .numberPresentation = " + this.numberPresentation + ", .name = " + this.name + ", .namePresentation = " + this.namePresentation + ", .callDetails = " + this.callDetails + ", .isECOnference = " + this.isECOnference + ", .peerVideoSupport = " + this.peerVideoSupport + ", .imsDomain = " + this.imsDomain + ", .redirectNumber = " + this.redirectNumber + ", .redirectNumberToa = " + this.redirectNumberToa + ", .redirectNumberPresentation = " + this.redirectNumberPresentation + "}";
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
        hwBlob.putString(88 + j, this.redirectNumber);
        hwBlob.putInt32(104 + j, this.redirectNumberToa);
        hwBlob.putInt32(108 + j, this.redirectNumberPresentation);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(112);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}

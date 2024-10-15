package com.huawei.ims.p2ptransport;

import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class P2pTransDataStructureUtil {
    public static final int DATA_TYPE_LENGTH = 2;
    public static final short DEVICE_ID_FIELD_TYPE = 1;
    public static final int MAX_VOICE_DATA_LENGTH = 65535;
    private static final int SHORT_INT_LEN = 2;
    private static final String TAG = "P2pTransDataStructureUtil";
    public static final short VOICE_DATA_FIELD_TYPE = 2;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class P2pTransDataHeader {
        private static final int DATA_LEN_POS = 2;
        private static final int DATA_TYPE_POS = 0;
        private static final int HEADER_LEN = 4;

        private P2pTransDataHeader() {
        }
    }

    private static short getShortFromBody(byte[] body, int pos) {
        return ByteBuffer.wrap(body, pos, 2).getShort();
    }

    public static short getTransDataType(byte[] header) {
        if (header == null || header.length != 4) {
            return (short) -1;
        }
        return getShortFromBody(header, 0);
    }

    public static short getTransDataLen(byte[] header) {
        if (header == null || header.length != 4) {
            return (short) -1;
        }
        return getShortFromBody(header, 2);
    }

    private static void copyShortToBody(byte[] data, short value, int pos) {
        System.arraycopy(ByteBuffer.allocate(2).putShort(value).array(), 0, data, pos, 2);
    }

    private static void copyBytesToBody(byte[] dest, byte[] src, int pos) {
        System.arraycopy(src, 0, dest, pos, src.length);
    }

    private static byte[] generateField(short type, byte[] data) {
        int dataLen = data.length;
        byte[] generateDataBytes = new byte[dataLen + 4];
        copyShortToBody(generateDataBytes, type, 0);
        copyShortToBody(generateDataBytes, (short) dataLen, 2);
        copyBytesToBody(generateDataBytes, data, 4);
        return generateDataBytes;
    }

    public static byte[] generateData(String devId, byte[] data) {
        if (data == null || data.length > 65535 || TextUtils.isEmpty(devId)) {
            return new byte[0];
        }
        byte[] devIdDatas = generateField((short) 1, devId.getBytes(StandardCharsets.UTF_8));
        byte[] voiceDatas = generateField((short) 2, data);
        byte[] results = new byte[devIdDatas.length + voiceDatas.length];
        copyBytesToBody(results, devIdDatas, 0);
        copyBytesToBody(results, voiceDatas, devIdDatas.length);
        return results;
    }
}

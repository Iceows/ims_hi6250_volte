package com.huawei.ims.vt;

import android.content.Context;
import android.content.res.AssetManager;
import android.telephony.Rlog;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImageDataUtils {
    public static final int ENCODE_TYPE_H264 = 0;
    public static final int ENCODE_TYPE_H265 = 1;
    private static final String GROUP_PATH = "photo";
    private static final String H264_FILE_NAME = "photo_480_640.h264";
    private static final String H265_FILE_NAME = "photo_480_640.h265";
    public static final int HME_V_IMAGE_HEIGHT = 640;
    private static final int HME_V_IMAGE_UNKNOWN = 999;
    public static final int HME_V_IMAGE_WIDTH = 480;
    private static final int HME_V_VIDEO_H264 = 400;
    private static final int HME_V_VIDEO_H265 = 401;
    private static final String TAG = "ImageDataUtils";

    private ImageDataUtils() {
    }

    public static byte[] getImageDataFromAssets(Context context, int encodeType) {
        String filename;
        if (context == null) {
            return new byte[0];
        }
        if (encodeType == 1) {
            filename = H265_FILE_NAME;
        } else if (encodeType == 0) {
            filename = H264_FILE_NAME;
        } else {
            return new byte[0];
        }
        return readFileFromAssets(context, GROUP_PATH, filename);
    }

    public static int getVideoEncodeFormat(int encodeType) {
        if (encodeType == 0) {
            return HME_V_VIDEO_H264;
        }
        if (encodeType == 1) {
            return HME_V_VIDEO_H265;
        }
        return HME_V_IMAGE_UNKNOWN;
    }

    private static byte[] readFileFromAssets(Context context, String groupPath, String filename) {
        int count;
        byte[] buffer = null;
        AssetManager am = context.getAssets();
        InputStream inputStream = null;
        try {
            try {
                try {
                    if (groupPath != null) {
                        inputStream = am.open(groupPath + "/" + filename);
                    } else {
                        inputStream = am.open(filename);
                    }
                    int length = inputStream.available();
                    buffer = new byte[length];
                    count = inputStream.read(buffer);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            Rlog.e(TAG, "inputStream close IO exception");
                        }
                    }
                    throw th;
                }
            } catch (IOException e2) {
                Rlog.e(TAG, "readFileFromAssets IO exception");
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (IOException e3) {
            Rlog.e(TAG, "inputStream close IO exception");
        }
        if (count > 0) {
            inputStream.close();
            return buffer;
        }
        byte[] bArr = new byte[0];
        try {
            inputStream.close();
        } catch (IOException e4) {
            Rlog.e(TAG, "inputStream close IO exception");
        }
        return bArr;
    }
}

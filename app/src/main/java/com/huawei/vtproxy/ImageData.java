package com.huawei.vtproxy;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImageData {
    private byte[] data;
    private int height;
    private int imageType;
    private int width;

    public ImageData(int imageType, int width, int height, byte[] imgData) {
        this.imageType = 0;
        this.width = 0;
        this.height = 0;
        this.imageType = imageType;
        this.width = width;
        this.height = height;
        if (imgData != null) {
            this.data = (byte[]) imgData.clone();
        }
    }

    public int getLength() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public int getImageType() {
        return this.imageType;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public byte[] getData() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return new byte[0];
        }
        return (byte[]) bArr.clone();
    }
}

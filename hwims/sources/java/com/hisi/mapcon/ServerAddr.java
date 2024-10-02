package com.hisi.mapcon;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class ServerAddr implements Parcelable {
    public static final Parcelable.Creator<ServerAddr> CREATOR = new Parcelable.Creator<ServerAddr>() { // from class: com.hisi.mapcon.ServerAddr.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerAddr createFromParcel(Parcel in) {
            return new ServerAddr(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerAddr[] newArray(int size) {
            return new ServerAddr[size];
        }
    };
    ArrayList<ServerAddrPair> mAddress;
    int mSize;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class ServerAddrPair {
        String address;
        int type;

        public ServerAddrPair(int type, String addr) {
            this.type = type;
            this.address = addr;
        }
    }

    public ServerAddr() {
        this.mAddress = new ArrayList<>();
        this.mSize = 0;
    }

    public ServerAddr(Parcel in) {
        this.mSize = in.readInt();
        this.mAddress = new ArrayList<>();
        for (int index = 0; index < this.mSize; index++) {
            int type = in.readInt();
            String addr = in.readString();
            this.mAddress.add(new ServerAddrPair(type, addr));
        }
    }

    public void add(int type, String addr) {
        this.mAddress.add(new ServerAddrPair(type, addr));
        this.mSize++;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int arg1) {
        int size = this.mAddress.size();
        out.writeInt(this.mSize);
        for (int index = 0; index < size; index++) {
            ServerAddrPair pair = this.mAddress.get(index);
            out.writeInt(pair.type);
            out.writeString(pair.address);
        }
    }

    public String toString() {
        StringBuffer retString = new StringBuffer();
        retString.append("serverAddr:size is:");
        retString.append(this.mAddress.size());
        int mAddressSize = this.mAddress.size();
        for (int index = 0; index < mAddressSize; index++) {
            ServerAddrPair pair = this.mAddress.get(index);
            retString.append("index:");
            retString.append(index);
            retString.append(" type:");
            retString.append(pair.type);
            retString.append(" addr:");
            retString.append(pair.address);
        }
        return retString.toString();
    }
}

package com.hisi.mapcon;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: ServerAddr.class */
public class ServerAddr implements Parcelable {
    public static final Parcelable.Creator<ServerAddr> CREATOR = new Parcelable.Creator<ServerAddr>() { // from class: com.hisi.mapcon.ServerAddr.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerAddr createFromParcel(Parcel parcel) {
            return new ServerAddr(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ServerAddr[] newArray(int i) {
            return new ServerAddr[i];
        }
    };
    ArrayList<ServerAddrPair> mAddress;
    int mSize;

    /* loaded from: ServerAddr$ServerAddrPair.class */
    public static class ServerAddrPair {
        String address;
        int type;

        public ServerAddrPair(int i, String str) {
            this.type = i;
            this.address = str;
        }
    }

    public ServerAddr() {
        this.mAddress = new ArrayList<>();
        this.mSize = 0;
    }

    public ServerAddr(Parcel parcel) {
        this.mSize = parcel.readInt();
        this.mAddress = new ArrayList<>();
        for (int i = 0; i < this.mSize; i++) {
            this.mAddress.add(new ServerAddrPair(parcel.readInt(), parcel.readString()));
        }
    }

    public void add(int i, String str) {
        this.mAddress.add(new ServerAddrPair(i, str));
        this.mSize++;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("serverAddr:size is:");
        stringBuffer.append(this.mAddress.size());
        int size = this.mAddress.size();
        for (int i = 0; i < size; i++) {
            ServerAddrPair serverAddrPair = this.mAddress.get(i);
            stringBuffer.append("index:");
            stringBuffer.append(i);
            stringBuffer.append(" type:");
            stringBuffer.append(serverAddrPair.type);
            stringBuffer.append(" addr:");
            stringBuffer.append(serverAddrPair.address);
        }
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int size = this.mAddress.size();
        parcel.writeInt(this.mSize);
        for (int i2 = 0; i2 < size; i2++) {
            ServerAddrPair serverAddrPair = this.mAddress.get(i2);
            parcel.writeInt(serverAddrPair.type);
            parcel.writeString(serverAddrPair.address);
        }
    }
}

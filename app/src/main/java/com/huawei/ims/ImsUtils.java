package com.huawei.ims;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.telephony.Rlog;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsUtils {
    private static final String CERTIFICATE_TYPE_X509 = "X509";
    private static final int INIT_NUMBER = 0;
    private static final int INVALID_PID = -1;
    private static final int LEN_BYTE_TO_HEX = 2;
    private static final String MESSAGEDIGEST_ALGORITHM_SHA256 = "SHA256";
    private static final String TAG = "ImsUtils";

    private ImsUtils() {
    }

    public static int getPidByPackageName(Context context, String processName) {
        if (context == null || TextUtils.isEmpty(processName)) {
            return -1;
        }
        Object activityService = context.getSystemService("activity");
        if (!(activityService instanceof ActivityManager)) {
            return -1;
        }
        ActivityManager activityManager = (ActivityManager) activityService;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo processInfo : runningAppProcesses) {
                if (TextUtils.equals(processInfo.processName, processName)) {
                    return processInfo.pid;
                }
            }
        }
        return -1;
    }

    public static String getCertificateSha256Fingerprint(Context paramContext, String processPackageName) {
        PackageManager pm;
        if (paramContext == null || (pm = paramContext.getPackageManager()) == null) {
            return "";
        }
        if (processPackageName == null || processPackageName.length() == 0) {
            Rlog.e(TAG, "getRawSignature: invalid package name.");
            return "";
        }
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo localPackageInfo = pm.getPackageInfo(processPackageName, 134217728);
                if (localPackageInfo == null) {
                    Rlog.e(TAG, "getRawSignature: get package info failed.");
                    return "";
                }
                Signature[] signatures = localPackageInfo.signingInfo.getApkContentsSigners();
                if (signatures != null && signatures.length > 0) {
                    byte[] certs = signatures[0].toByteArray();
                    return getSha256FingerData(certs);
                }
                return "";
            }
        } catch (PackageManager.NameNotFoundException e) {
            Rlog.e(TAG, "getRawSignature: package name is not found.");
        }
        return null;
    }

    private static String getSha256FingerData(byte[] cert) {
        String hexString = null;
        InputStream input = null;
        try {
        } catch (IOException e) {
            Rlog.e(TAG, "getSha256FingerData: close input IOException.");
        }
        try {
            try {
                try {
                    InputStream input2 = new ByteArrayInputStream(cert);
                    CertificateFactory cf = CertificateFactory.getInstance(CERTIFICATE_TYPE_X509);
                    Certificate certificate = cf.generateCertificate(input2);
                    if (certificate instanceof X509Certificate) {
                        X509Certificate x509Cert = (X509Certificate) certificate;
                        MessageDigest md = MessageDigest.getInstance(MESSAGEDIGEST_ALGORITHM_SHA256);
                        byte[] publicKeys = md.digest(x509Cert.getEncoded());
                        hexString = byte2HexFormatted(publicKeys);
                    } else {
                        Rlog.e(TAG, "getSha256FingerData: generate certificate error.");
                    }
                    try {
                        input2.close();
                    } catch (IOException e2) {
                        Rlog.e(TAG, "getSha256FingerData: close input IOException.");
                    }
                } catch (CertificateException e3) {
                    Rlog.e(TAG, "getSha256FingerData: CertificateException.");
                    if (0 != 0) {
                        input.close();
                    }
                }
            } catch (NoSuchAlgorithmException e4) {
                Rlog.e(TAG, "getSha256FingerData: NoSuchAlgorithmException.");
                if (0 != 0) {
                    input.close();
                }
            }
            return hexString;
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    input.close();
                } catch (IOException e5) {
                    Rlog.e(TAG, "getSha256FingerData: close input IOException.");
                }
            }
            throw th;
        }
    }

    private static String byte2HexFormatted(byte[] arr) {
        String hexStringTemp;
        if (arr == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder(arr.length * 2);
        for (int i = 0; i < arr.length; i++) {
            String hexString = Integer.toHexString(arr[i]);
            int len = hexString.length();
            if (len == 1) {
                hexStringTemp = "0" + hexString;
            } else if (len > 2) {
                hexStringTemp = hexString.substring(len - 2, len);
            } else {
                hexStringTemp = hexString;
            }
            stringBuilder.append(hexStringTemp.toUpperCase(Locale.ENGLISH));
            if (i < arr.length - 1) {
                stringBuilder.append(':');
            }
        }
        return stringBuilder.toString();
    }
}

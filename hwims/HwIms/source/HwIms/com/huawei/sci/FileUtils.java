package com.huawei.sci;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.ims.vt.ImsVTConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: FileUtils.class */
public class FileUtils {
    private static FileUtils fileUtil = null;
    public static final String mZipPath = "/mnt/sdcard/log.zip";

    public static void copyAssets(Context context, String str, String str2) {
        StringBuilder sb;
        InputStream open;
        try {
            String[] list = context.getResources().getAssets().list(str);
            File file = new File(str2);
            if (!file.exists() && !file.mkdirs()) {
                SciLog.e("FileUtils:", "creat dir failed " + file);
                return;
            }
            for (String str3 : list) {
                OutputStream outputStream = null;
                OutputStream outputStream2 = null;
                OutputStream outputStream3 = null;
                InputStream inputStream = null;
                InputStream inputStream2 = null;
                InputStream inputStream3 = null;
                try {
                    try {
                        try {
                            File file2 = new File(file, str3);
                            if (file2.exists() && !file2.delete()) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("delete file failed ");
                                sb2.append(str3);
                                SciLog.e("FileUtils:", sb2.toString());
                            }
                            if (str.length() != 0) {
                                AssetManager assets = context.getAssets();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(str);
                                sb3.append("/");
                                sb3.append(str3);
                                open = assets.open(sb3.toString());
                            } else {
                                open = context.getAssets().open(str3);
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            byte[] bArr = new byte[ImsVTConstants.SUPPORT_VT_ENHANCED_MULTI_TASK_SWITCH_VIDEOCALL_FUNCTION];
                            while (true) {
                                int read = open.read(bArr);
                                if (read > 0) {
                                    fileOutputStream.write(bArr, 0, read);
                                } else {
                                    try {
                                        break;
                                    } catch (IOException e) {
                                        SciLog.e("FileUtils:", "output file close exception:" + e.getMessage());
                                    }
                                }
                            }
                            fileOutputStream.close();
                            if (open != null) {
                                try {
                                    open.close();
                                } catch (IOException e2) {
                                    e = e2;
                                    sb = new StringBuilder();
                                    sb.append("input file close exception:");
                                    sb.append(e.getMessage());
                                    SciLog.e("FileUtils:", sb.toString());
                                }
                            }
                        } catch (FileNotFoundException e3) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("File open exception:");
                            sb4.append(e3.getMessage());
                            SciLog.e("FileUtils:", sb4.toString());
                            if (0 != 0) {
                                try {
                                    outputStream2.close();
                                } catch (IOException e4) {
                                    SciLog.e("FileUtils:", "output file close exception:" + e4.getMessage());
                                }
                            }
                            if (0 != 0) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e5) {
                                    e = e5;
                                    sb = new StringBuilder();
                                    sb.append("input file close exception:");
                                    sb.append(e.getMessage());
                                    SciLog.e("FileUtils:", sb.toString());
                                }
                            }
                        }
                    } catch (IOException e6) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("File read or write exception:");
                        sb5.append(e6.getMessage());
                        SciLog.e("FileUtils:", sb5.toString());
                        if (0 != 0) {
                            try {
                                outputStream.close();
                            } catch (IOException e7) {
                                SciLog.e("FileUtils:", "output file close exception:" + e7.getMessage());
                            }
                        }
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException e8) {
                                e = e8;
                                sb = new StringBuilder();
                                sb.append("input file close exception:");
                                sb.append(e.getMessage());
                                SciLog.e("FileUtils:", sb.toString());
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            outputStream3.close();
                        } catch (IOException e9) {
                            SciLog.e("FileUtils:", "output file close exception:" + e9.getMessage());
                        }
                    }
                    if (0 != 0) {
                        try {
                            inputStream3.close();
                        } catch (IOException e10) {
                            SciLog.e("FileUtils:", "input file close exception:" + e10.getMessage());
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e11) {
        }
    }

    public static File createDir(String str) {
        File file = new File(str + File.separator);
        if (!file.exists() && !file.mkdirs()) {
            SciLog.e("FileUtils:", "create  dir failed " + str);
        }
        SciLog.d("FileUtils:", "create  dir successful. " + str);
        return file;
    }

    public static void createLogDirInSDCard() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            String str = "mnt/sdcard" + File.separator + SciSys.LOG_DIR;
            Log.d("km", "fileDirectory " + str);
            File file = new File(str);
            if (file.exists() || file.mkdirs()) {
                return;
            }
            SciLog.e("FileUtils:", "creat  dir failed" + file);
        }
    }

    public static boolean deleteDir(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    String[] list = file.list();
                    if (list == null) {
                        return false;
                    }
                    for (String str : list) {
                        if (!deleteDir(new File(file, str))) {
                            return false;
                        }
                    }
                }
                return file.delete();
            }
            return false;
        } catch (Exception e) {
            SciLog.e("FileUtils:", "deleteDir failed, error message: " + e.getMessage());
            return false;
        }
    }

    public static String existThenRenameFile(String str) {
        String str2;
        File file;
        File file2 = new File(str);
        String name = file2.getName();
        int lastIndexOf = name.lastIndexOf(".");
        int i = 0;
        if (-1 == lastIndexOf) {
            int i2 = 0;
            String str3 = name;
            File file3 = file2;
            while (true) {
                File file4 = file3;
                str2 = str3;
                file = file4;
                if (!file4.exists()) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(name);
                sb.append("(");
                i2++;
                sb.append(i2);
                sb.append(")");
                str3 = sb.toString();
                file3 = new File(file4.getParent(), str3);
            }
        } else {
            String substring = name.substring(0, lastIndexOf);
            String substring2 = name.substring(lastIndexOf + 1);
            String str4 = name;
            File file5 = file2;
            while (true) {
                file = file5;
                if (!file.exists()) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(substring);
                sb2.append("(");
                i++;
                sb2.append(i);
                sb2.append(")");
                sb2.append(".");
                sb2.append(substring2);
                str4 = sb2.toString();
                file5 = new File(file.getParent(), str4);
            }
            str2 = str4;
        }
        return file.getParent() + File.separator + str2;
    }

    public static String getAppPath(Context context) {
        if (context == null) {
            SciLog.e("FileUtils", "null == mcontext");
            return null;
        } else if (context.getFilesDir() == null) {
            SciLog.e("FileUtils", "null == mcontext.getFilesDir()");
            return null;
        } else {
            String absolutePath = context.getFilesDir().getAbsolutePath();
            if (absolutePath == null) {
                SciLog.e("FileUtils", "getgetAppPath null == fileDir");
                return null;
            }
            SciLog.d("FileUtils", "getgetAppPath fileDir = " + absolutePath);
            String str = absolutePath;
            if (absolutePath.lastIndexOf("/") > 0) {
                str = absolutePath.substring(0, absolutePath.lastIndexOf("/"));
            }
            return str;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static long getFileSize(String str) {
        long j;
        StringBuilder sb;
        File file = new File(str);
        if (file.exists()) {
            FileInputStream fileInputStream = null;
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    FileInputStream fileInputStream3 = new FileInputStream(file);
                    fileInputStream = fileInputStream3;
                    fileInputStream2 = fileInputStream3;
                    j = fileInputStream3.available();
                    try {
                        fileInputStream3.close();
                    } catch (IOException e) {
                        e = e;
                        sb = new StringBuilder();
                        sb.append("getFileSize input file close exception: ");
                        sb.append(e.getMessage());
                        SciLog.e("FileUtils", sb.toString());
                        return j;
                    }
                } catch (IOException e2) {
                    FileInputStream fileInputStream4 = fileInputStream2;
                    StringBuilder sb2 = new StringBuilder();
                    FileInputStream fileInputStream5 = fileInputStream2;
                    sb2.append("getFileSize failed, error message: ");
                    FileInputStream fileInputStream6 = fileInputStream2;
                    sb2.append(e2.getMessage());
                    FileInputStream fileInputStream7 = fileInputStream2;
                    SciLog.e("FileUtils", sb2.toString());
                    j = 0;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                            j = 0;
                        } catch (IOException e3) {
                            e = e3;
                            sb = new StringBuilder();
                            j = 0;
                            sb.append("getFileSize input file close exception: ");
                            sb.append(e.getMessage());
                            SciLog.e("FileUtils", sb.toString());
                            return j;
                        }
                    }
                }
            } catch (Throwable th) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        SciLog.e("FileUtils", "getFileSize input file close exception: " + e4.getMessage());
                    }
                }
                throw th;
            }
        } else {
            SciLog.e("FileUtils", "getFileSize file not exists, filePath = " + str);
            j = 0L;
        }
        return j;
    }

    public static FileUtils getInstance() {
        FileUtils fileUtils;
        synchronized (FileUtils.class) {
            try {
                Log.i("FileUtils", "getInstance enter");
                if (fileUtil == null) {
                    fileUtil = new FileUtils();
                }
                fileUtils = fileUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileUtils;
    }

    public static List<String> getLoginedUserList(Context context) {
        ArrayList arrayList = new ArrayList();
        String str = getAppPath(context) + "/config";
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null) {
            SciLog.e("FileUtils", "getLoginedUserList null == listFiles");
            return arrayList;
        }
        SciLog.d("FileUtils", "getLoginedUserList CONF_PATH = " + str + " length = " + listFiles.length);
        int length = listFiles.length;
        for (int i = 0; i < length; i++) {
            File file = listFiles[i];
            String name = file.getName();
            if (file.isDirectory() && !TextUtils.isEmpty(name)) {
                arrayList.add(name);
                SciLog.d("FileUtils", "getLoginedUserList userName = " + name);
            }
        }
        return arrayList;
    }

    public static File getNewFile(File file, String str) {
        Log.i("FileUtils", "getNewFile(File path, String name) enter");
        File file2 = new File(file, str);
        File file3 = file2;
        if (file2.exists()) {
            int length = str.length();
            char charAt = str.charAt(str.length() - 1);
            if (charAt < '0' || charAt > '9') {
                file3 = getNewFile(file, str + '1');
            } else {
                file3 = getNewFile(file, str.substring(0, length - 1) + ((charAt - '0') + 1));
            }
        }
        return file3;
    }

    public static File getNewFile(String str, String str2) {
        Log.i("FileUtils", "getNewFile(String path, String name) enter");
        return getNewFile(new File(str), str2);
    }

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    public static boolean isHasSDCard() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public InputStream getFileInStream(String str) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (FileNotFoundException e) {
            SciLog.e("FileUtils:", "getFileInStream failed, error message: " + e.getMessage());
            fileInputStream = null;
        }
        return fileInputStream;
    }
}

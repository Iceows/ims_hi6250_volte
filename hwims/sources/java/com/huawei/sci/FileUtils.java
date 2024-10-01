package com.huawei.sci;

import android.content.Context;
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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class FileUtils {
    private static FileUtils fileUtil = null;
    public static final String mZipPath = "/mnt/sdcard/log.zip";

    public static File createDir(String fullDir) {
        File file = new File(fullDir + File.separator);
        if (!file.exists()) {
            boolean isSucceed = file.mkdirs();
            if (!isSucceed) {
                SciLog.e("FileUtils:", "create  dir failed " + fullDir);
            }
        }
        SciLog.d("FileUtils:", "create  dir successful. " + fullDir);
        return file;
    }

    public static boolean deleteDir(File deleteDir) {
        try {
            if (!deleteDir.exists()) {
                return false;
            }
            if (deleteDir.isDirectory()) {
                String[] childrenFile = deleteDir.list();
                if (childrenFile == null) {
                    return false;
                }
                for (String str : childrenFile) {
                    boolean success = deleteDir(new File(deleteDir, str));
                    if (!success) {
                        return false;
                    }
                }
            }
            return deleteDir.delete();
        } catch (Exception e) {
            SciLog.e("FileUtils:", "deleteDir failed, error message: " + e.getMessage());
            return false;
        }
    }

    public static synchronized FileUtils getInstance() {
        FileUtils fileUtils;
        synchronized (FileUtils.class) {
            Log.i("FileUtils", "getInstance enter");
            if (fileUtil == null) {
                fileUtil = new FileUtils();
            }
            fileUtils = fileUtil;
        }
        return fileUtils;
    }

    public static File getNewFile(String path, String name) {
        Log.i("FileUtils", "getNewFile(String path, String name) enter");
        return getNewFile(new File(path), name);
    }

    public static File getNewFile(File path, String name) {
        Log.i("FileUtils", "getNewFile(File path, String name) enter");
        File file = new File(path, name);
        if (file.exists()) {
            int length = name.length();
            char last = name.charAt(name.length() - 1);
            if (last >= '0' && last <= '9') {
                int suffix = (last - '0') + 1;
                return getNewFile(path, name.substring(0, length - 1) + suffix);
            }
            return getNewFile(path, name + '1');
        }
        return file;
    }

    public static boolean isHasSDCard() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        return false;
    }

    public static void copyAssets(Context context, String assetDir, String dir) {
        String str;
        StringBuilder sb;
        try {
            String[] files = context.getResources().getAssets().list(assetDir);
            File mWorkingPath = new File(dir);
            if (!mWorkingPath.exists() && !mWorkingPath.mkdirs()) {
                SciLog.e("FileUtils:", "creat dir failed " + mWorkingPath);
                return;
            }
            for (String fileName : files) {
                OutputStream out = null;
                InputStream in = null;
                try {
                    try {
                        try {
                            File outFile = new File(mWorkingPath, fileName);
                            if (outFile.exists()) {
                                boolean isDel = outFile.delete();
                                if (!isDel) {
                                    SciLog.e("FileUtils:", "delete file failed " + fileName);
                                }
                            }
                            InputStream in2 = assetDir.length() != 0 ? context.getAssets().open(assetDir + "/" + fileName) : context.getAssets().open(fileName);
                            OutputStream out2 = new FileOutputStream(outFile);
                            byte[] buf = new byte[ImsVTConstants.SUPPORT_VT_ENHANCED_MULTI_TASK_SWITCH_VIDEOCALL_FUNCTION];
                            while (true) {
                                int len = in2.read(buf);
                                if (len > 0) {
                                    out2.write(buf, 0, len);
                                } else {
                                    try {
                                        break;
                                    } catch (IOException e) {
                                        SciLog.e("FileUtils:", "output file close exception:" + e.getMessage());
                                    }
                                }
                            }
                            out2.close();
                            if (in2 != null) {
                                try {
                                    in2.close();
                                } catch (IOException e2) {
                                    e = e2;
                                    str = "FileUtils:";
                                    sb = new StringBuilder();
                                    sb.append("input file close exception:");
                                    sb.append(e.getMessage());
                                    SciLog.e(str, sb.toString());
                                }
                            }
                        } catch (FileNotFoundException e3) {
                            SciLog.e("FileUtils:", "File open exception:" + e3.getMessage());
                            if (0 != 0) {
                                try {
                                    out.close();
                                } catch (IOException e4) {
                                    SciLog.e("FileUtils:", "output file close exception:" + e4.getMessage());
                                }
                            }
                            if (0 != 0) {
                                try {
                                    in.close();
                                } catch (IOException e5) {
                                    e = e5;
                                    str = "FileUtils:";
                                    sb = new StringBuilder();
                                    sb.append("input file close exception:");
                                    sb.append(e.getMessage());
                                    SciLog.e(str, sb.toString());
                                }
                            }
                        }
                    } catch (IOException e6) {
                        SciLog.e("FileUtils:", "File read or write exception:" + e6.getMessage());
                        if (0 != 0) {
                            try {
                                out.close();
                            } catch (IOException e7) {
                                SciLog.e("FileUtils:", "output file close exception:" + e7.getMessage());
                            }
                        }
                        if (0 != 0) {
                            try {
                                in.close();
                            } catch (IOException e8) {
                                e = e8;
                                str = "FileUtils:";
                                sb = new StringBuilder();
                                sb.append("input file close exception:");
                                sb.append(e.getMessage());
                                SciLog.e(str, sb.toString());
                            }
                        }
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            out.close();
                        } catch (IOException e9) {
                            SciLog.e("FileUtils:", "output file close exception:" + e9.getMessage());
                        }
                    }
                    if (0 != 0) {
                        try {
                            in.close();
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

    public static boolean isFileExist(String path) {
        File file = new File(path);
        return file.exists();
    }

    public InputStream getFileInStream(String path) {
        try {
            FileInputStream fis = new FileInputStream(path);
            return fis;
        } catch (FileNotFoundException e) {
            SciLog.e("FileUtils:", "getFileInStream failed, error message: " + e.getMessage());
            return null;
        }
    }

    public static void createLogDirInSDCard() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            String fileDirectory = "mnt/sdcard" + File.separator + SciSys.LOG_DIR;
            Log.d("km", "fileDirectory " + fileDirectory);
            File filepath = new File(fileDirectory);
            if (!filepath.exists()) {
                boolean isSucceed = filepath.mkdirs();
                if (!isSucceed) {
                    SciLog.e("FileUtils:", "creat  dir failed" + filepath);
                }
            }
        }
    }

    public static String existThenRenameFile(String filePath) {
        File file = new File(filePath);
        String fileName = file.getName();
        int pointPosition = fileName.lastIndexOf(".");
        int count = 0;
        if (-1 != pointPosition) {
            String filePrefix = fileName.substring(0, pointPosition);
            String filePostfix = fileName.substring(pointPosition + 1);
            while (file.exists()) {
                StringBuilder sb = new StringBuilder();
                sb.append(filePrefix);
                sb.append("(");
                count++;
                sb.append(count);
                sb.append(")");
                sb.append(".");
                sb.append(filePostfix);
                fileName = sb.toString();
                file = new File(file.getParent(), fileName);
            }
        } else {
            while (file.exists()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(fileName);
                sb2.append("(");
                count++;
                sb2.append(count);
                sb2.append(")");
                fileName = sb2.toString();
                file = new File(file.getParent(), fileName);
            }
        }
        return file.getParent() + File.separator + fileName;
    }

    public static String getAppPath(Context mcontext) {
        if (mcontext == null) {
            SciLog.e("FileUtils", "null == mcontext");
            return null;
        } else if (mcontext.getFilesDir() == null) {
            SciLog.e("FileUtils", "null == mcontext.getFilesDir()");
            return null;
        } else {
            String fileDir = mcontext.getFilesDir().getAbsolutePath();
            if (fileDir == null) {
                SciLog.e("FileUtils", "getgetAppPath null == fileDir");
                return null;
            }
            SciLog.d("FileUtils", "getgetAppPath fileDir = " + fileDir);
            if (fileDir.lastIndexOf("/") > 0) {
                return fileDir.substring(0, fileDir.lastIndexOf("/"));
            }
            return fileDir;
        }
    }

    public static List<String> getLoginedUserList(Context mcontext) {
        List<String> userArray = new ArrayList<>();
        String pcWorkPath = getAppPath(mcontext);
        String CONF_PATH = pcWorkPath + "/config";
        File file = new File(CONF_PATH);
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            SciLog.e("FileUtils", "getLoginedUserList null == listFiles");
            return userArray;
        }
        SciLog.d("FileUtils", "getLoginedUserList CONF_PATH = " + CONF_PATH + " length = " + listFiles.length);
        for (File fileTemp : listFiles) {
            String userName = fileTemp.getName();
            if (fileTemp.isDirectory() && !TextUtils.isEmpty(userName)) {
                userArray.add(userName);
                SciLog.d("FileUtils", "getLoginedUserList userName = " + userName);
            }
        }
        return userArray;
    }

    public static long getFileSize(String filePath) {
        String str;
        StringBuilder sb;
        long size = 0;
        File file = new File(filePath);
        if (file.exists()) {
            FileInputStream fis = null;
            try {
                try {
                    fis = new FileInputStream(file);
                    size = fis.available();
                    try {
                        fis.close();
                    } catch (IOException e) {
                        e = e;
                        str = "FileUtils";
                        sb = new StringBuilder();
                        sb.append("getFileSize input file close exception: ");
                        sb.append(e.getMessage());
                        SciLog.e(str, sb.toString());
                        return size;
                    }
                } catch (IOException e2) {
                    SciLog.e("FileUtils", "getFileSize failed, error message: " + e2.getMessage());
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e3) {
                            e = e3;
                            str = "FileUtils";
                            sb = new StringBuilder();
                            sb.append("getFileSize input file close exception: ");
                            sb.append(e.getMessage());
                            SciLog.e(str, sb.toString());
                            return size;
                        }
                    }
                }
            } catch (Throwable th) {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e4) {
                        SciLog.e("FileUtils", "getFileSize input file close exception: " + e4.getMessage());
                    }
                }
                throw th;
            }
        } else {
            SciLog.e("FileUtils", "getFileSize file not exists, filePath = " + filePath);
        }
        return size;
    }
}

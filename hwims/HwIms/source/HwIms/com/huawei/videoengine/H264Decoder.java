package com.huawei.videoengine;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: H264Decoder.class */
public class H264Decoder implements SurfaceHolder.Callback {
    private int dataLength;
    private int isKeyFrame;
    private long renderTime;
    private SurfaceView surfaceView = null;
    private MediaCodec h264Decoder = null;
    private MediaFormat mediaFormat = null;
    private ByteBuffer playBuffer = null;
    private boolean needKeyFrame = false;
    private byte[] tempBufPlay = null;
    private boolean inited = false;
    private boolean started = false;
    private long lnativeObject = 0;
    private ReentrantLock decoderLock = new ReentrantLock();

    private native void setDecodedSize(long j, int i, int i2);

    private int start(SurfaceHolder surfaceHolder) {
        Log.i("H264JavaDecoder", "start");
        this.decoderLock.lock();
        try {
            if (this.started) {
                Log.i("H264JavaDecoder", " decoder is allready started");
                this.decoderLock.unlock();
                return 0;
            }
            try {
                this.h264Decoder = MediaCodec.createDecoderByType("video/avc");
                this.h264Decoder.configure(this.mediaFormat, surfaceHolder.getSurface(), (MediaCrypto) null, 0);
                try {
                    this.h264Decoder.start();
                    this.started = true;
                    this.needKeyFrame = true;
                    this.decoderLock.unlock();
                    return 0;
                } catch (Exception e) {
                    Log.e("H264JavaDecoder", "Start : " + e.toString());
                    this.decoderLock.unlock();
                    return -1;
                }
            } catch (Exception e2) {
                Log.e("H264JavaDecoder", "Configure : " + e2.toString());
                this.decoderLock.unlock();
                return -1;
            }
        } catch (Throwable th) {
            this.decoderLock.unlock();
            throw th;
        }
    }

    private void stop() {
        Log.i("H264JavaDecoder", "stop");
        this.decoderLock.lock();
        try {
            if (this.h264Decoder == null) {
                return;
            }
            try {
                Log.i("H264JavaDecoder", "h264Decoder stop1");
                if (this.started) {
                    this.h264Decoder.stop();
                    this.started = false;
                }
                Log.i("H264JavaDecoder", "h264Decoder stop2");
                this.h264Decoder.release();
            } catch (Exception e) {
                Log.e("H264JavaDecoder", "stop : " + e.toString());
            }
            this.h264Decoder = null;
            Log.i("H264JavaDecoder", "h264Decoder stop3");
        } finally {
            this.decoderLock.unlock();
        }
    }

    public int config(SurfaceView surfaceView, int i, int i2) {
        Log.i("H264JavaDecoder", "config width " + i + "  height " + i2);
        SurfaceHolder holder = surfaceView.getHolder();
        if (holder == null) {
            Log.e("H264JavaDecoder", "H264Decoder config failed holder = null");
            return -1;
        }
        Log.i("H264JavaDecoder", "before createVideoFormat");
        this.surfaceView = surfaceView;
        this.mediaFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        holder.addCallback(this);
        int i3 = 0;
        this.decoderLock.lock();
        try {
            if (holder.getSurface().isValid()) {
                int start = start(holder);
                i3 = start;
                if (start != 0) {
                    Log.e("H264JavaDecoder", "start failed");
                    i3 = start;
                }
            }
            this.decoderLock.unlock();
            Log.i("H264JavaDecoder", "config end");
            return i3;
        } catch (Throwable th) {
            this.decoderLock.unlock();
            throw th;
        }
    }

    public void deRegisterNativeObject() {
        this.lnativeObject = 0L;
    }

    public int init() {
        Log.i("H264JavaDecoder", "init");
        if (this.inited) {
            return 0;
        }
        try {
            this.playBuffer = ByteBuffer.allocateDirect(2097152);
            try {
                this.tempBufPlay = new byte[2097152];
                this.inited = true;
                return 0;
            } catch (Exception e) {
                Log.e("H264JavaDecoder", "tempBufPlay failed");
                this.tempBufPlay = null;
                return -1;
            }
        } catch (Exception e2) {
            Log.e("H264JavaDecoder", "H264Decoder failed");
            this.playBuffer = null;
            return -1;
        }
    }

    public int onDecodeAndRander() {
        int dequeueOutputBuffer;
        this.decoderLock.lock();
        try {
            if (!this.started) {
                this.decoderLock.unlock();
                return 0;
            } else if (!this.inited && init() != 0) {
                this.decoderLock.unlock();
                return -1;
            } else {
                try {
                    MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                    while (true) {
                        dequeueOutputBuffer = this.h264Decoder.dequeueOutputBuffer(bufferInfo, 0L);
                        if (dequeueOutputBuffer < 0) {
                            break;
                        }
                        this.h264Decoder.releaseOutputBuffer(dequeueOutputBuffer, true);
                    }
                    if (dequeueOutputBuffer == -2) {
                        MediaFormat outputFormat = this.h264Decoder.getOutputFormat();
                        int integer = outputFormat.getInteger("width");
                        int integer2 = outputFormat.getInteger("height");
                        Log.e("H264JavaDecoder", "dec resolution change to: width " + integer + " height " + integer2);
                        setDecodedSize(this.lnativeObject, integer, integer2);
                    }
                } catch (Exception e) {
                    Log.e("H264JavaDecoder", "decodeAndrander : " + e.getMessage());
                }
                this.decoderLock.unlock();
                return 0;
            }
        } catch (Throwable th) {
            this.decoderLock.unlock();
            throw th;
        }
    }

    public int onFrame() {
        int dequeueOutputBuffer;
        ByteBuffer[] inputBuffers;
        int dequeueInputBuffer;
        this.decoderLock.lock();
        try {
            if (!this.started) {
                this.decoderLock.unlock();
                return 0;
            }
            if (this.needKeyFrame) {
                if (this.isKeyFrame == 0) {
                    Log.e("H264JavaDecoder", "request i, but not");
                    this.decoderLock.unlock();
                    return -100;
                }
                this.needKeyFrame = false;
            }
            if (!this.inited && init() != 0) {
                Log.e("H264JavaDecoder", "inited failed");
                this.decoderLock.unlock();
                return 0;
            }
            this.playBuffer.get(this.tempBufPlay, 0, this.dataLength);
            this.playBuffer.rewind();
            try {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                while (true) {
                    dequeueOutputBuffer = this.h264Decoder.dequeueOutputBuffer(bufferInfo, 0L);
                    if (dequeueOutputBuffer < 0) {
                        break;
                    }
                    this.h264Decoder.releaseOutputBuffer(dequeueOutputBuffer, true);
                }
                if (dequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.h264Decoder.getOutputFormat();
                    int integer = outputFormat.getInteger("width");
                    int integer2 = outputFormat.getInteger("height");
                    Log.e("H264JavaDecoder", "dec resolution change to: width " + integer + " height " + integer2);
                    setDecodedSize(this.lnativeObject, integer, integer2);
                }
                inputBuffers = this.h264Decoder.getInputBuffers();
                dequeueInputBuffer = this.h264Decoder.dequeueInputBuffer(20000L);
            } catch (Exception e) {
                Log.e("H264JavaDecoder", "onFrame : " + e.getMessage());
            }
            if (dequeueInputBuffer < 0) {
                Log.e("H264JavaDecoder", "inputBufferIndex < 0");
                this.h264Decoder.flush();
                this.needKeyFrame = true;
                this.decoderLock.unlock();
                return -100;
            }
            ByteBuffer byteBuffer = inputBuffers[dequeueInputBuffer];
            byteBuffer.clear();
            byteBuffer.put(this.tempBufPlay, 0, this.dataLength);
            this.h264Decoder.queueInputBuffer(dequeueInputBuffer, 0, this.dataLength, this.renderTime, 0);
            this.decoderLock.unlock();
            return 0;
        } catch (Throwable th) {
            this.decoderLock.unlock();
            throw th;
        }
    }

    public void registerNativeObject(long j) {
        this.lnativeObject = j;
    }

    public void release() {
        Log.i("H264JavaDecoder", "release");
        stop();
        this.surfaceView.getHolder().removeCallback(this);
    }

    public void setFrameInfo(int i, long j, int i2) {
        this.decoderLock.lock();
        try {
            this.dataLength = i;
            this.renderTime = j;
            this.isKeyFrame = i2;
        } finally {
            this.decoderLock.unlock();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Log.i("H264JavaDecoder", "Enter surfaceChanged");
        this.decoderLock.lock();
        try {
            if (start(surfaceHolder) != 0) {
                Log.e("H264JavaDecoder", "surfaceCreated start failed");
            }
        } finally {
            this.decoderLock.unlock();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.i("H264JavaDecoder", "Enter surfaceCreated");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.i("H264JavaDecoder", "Enter surfaceDestroyed");
        this.decoderLock.lock();
        try {
            stop();
        } finally {
            this.decoderLock.unlock();
        }
    }
}

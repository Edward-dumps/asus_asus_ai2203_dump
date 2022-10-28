.class public Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;
.super Landroid/view/SurfaceView;
.source "FaceRegisterCameraView2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field final mCaptureSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mContext:Landroid/content/Context;

.field private mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mImageReader:Landroid/media/ImageReader;

.field public mPreviewHeight:I

.field private mPreviewScale:F

.field public mPreviewWidth:I

.field final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mWithMargin:Z

.field private previewScaleX:F

.field private previewScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/16 v2, 0x5a

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 271
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mWithMargin:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 175
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 216
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 272
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mWithMargin:Z

    .line 79
    new-instance p2, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance p2, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 175
    new-instance p2, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 216
    new-instance p2, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->startBackgroundThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->stopBackgroundThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->closeCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageReader:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->previewScaleX:F

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->previewScaleY:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private closeCamera()V
    .locals 3

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 435
    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 439
    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageReader:Landroid/media/ImageReader;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 443
    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "FaceRegisterCameraView2"

    const-string v2, "Interrupted while trying to lock camera closing."

    .line 446
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 449
    throw v0
.end method

.method private getPreviewScale(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p0, 0x3f400000    # 0.75f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/high16 p0, 0x3f100000    # 0.5625f

    return p0

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getScreenScale()F

    move-result p0

    return p0
.end method

.method private getScreenScale()F
    .locals 4

    .line 300
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 301
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 302
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    .line 304
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    div-float v1, v0, p0

    goto :goto_0

    :cond_0
    div-float v1, p0, v0

    .line 312
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMetrics.widthPixels : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FaceRegisterCameraView2"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMetrics.heightPixels : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scale : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f400000    # 0.75f

    sub-float v0, v1, p0

    .line 317
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f100000    # 0.5625f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 281
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mContext:Landroid/content/Context;

    const-string v0, "camera"

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 p1, 0x1

    .line 283
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getPreviewScale(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewScale:F

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 286
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 457
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 458
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 459
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 470
    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 472
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreviewScaleX()F
    .locals 0

    .line 420
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->previewScaleX:F

    return p0
.end method

.method public getPreviewScaleY()F
    .locals 0

    .line 424
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->previewScaleY:F

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 322
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 323
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 328
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mWithMargin:Z

    if-nez v0, :cond_1

    mul-int v0, p1, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mWithMargin:Z

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 334
    :cond_0
    div-int/lit8 v1, p1, 0x6

    .line 337
    :goto_0
    const-class v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int v3, v1

    .line 338
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 339
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 340
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 341
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 342
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3f800000    # 1.0f

    if-ge p1, p2, :cond_4

    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 347
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    mul-int/lit8 v0, p1, 0x4

    .line 353
    div-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_3
    mul-int/lit8 v0, p1, 0x10

    .line 356
    div-int/lit8 v0, v0, 0x9

    goto :goto_3

    :cond_4
    int-to-float v2, p2

    mul-float/2addr v2, v1

    int-to-float v1, p1

    div-float/2addr v2, v1

    .line 361
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_5

    :goto_1
    move v0, p1

    :goto_2
    move v1, p2

    goto :goto_4

    :cond_5
    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    mul-int/lit8 v0, p2, 0x4

    .line 367
    div-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_6
    mul-int/lit8 v0, p1, 0x9

    .line 370
    div-int/lit8 v0, v0, 0x10

    :goto_3
    move v1, v0

    move v0, p1

    .line 376
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalWidth :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", originalHeight :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceRegisterCameraView2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalWidth: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finalHeight: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setupImageReaderLinstener(Landroid/media/ImageReader$OnImageAvailableListener;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method public stopPreview()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    const-string v0, "FaceRegisterCameraView2"

    const-string v1, "stopPreview()"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 411
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 414
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updatePreview()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

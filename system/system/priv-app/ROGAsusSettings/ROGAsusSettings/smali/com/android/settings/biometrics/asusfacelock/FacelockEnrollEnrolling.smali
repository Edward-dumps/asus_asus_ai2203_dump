.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.source "FacelockEnrollEnrolling.java"


# instance fields
.field private mCameraToggleController:Lcom/android/settings/privacy/CameraToggleController;

.field private mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEnrollAnimation1:Landroid/widget/ImageView;

.field private mEnrollAnimation2:Landroid/widget/ImageView;

.field private mEnrollAnimation3:Landroid/widget/ImageView;

.field private mFaceRegisterCount:I

.field private mHintTv:Landroid/widget/TextView;

.field private mIsBackKeyPressed:Z

.field private mIsBound:Z

.field private mIsKilled:Z

.field private volatile mIsNv21DataReady:Z

.field private mIsRegisterSuccess:Z

.field private volatile mIsTracking:Z

.field private mListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field private mMaskView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPercentTv:Landroid/widget/TextView;

.field private mPercentTv2:Landroid/widget/TextView;

.field private mRotation:I

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

.field private mShowSensorUseDialog:Z

.field private mShowSensorUseDialogCount:I

.field private mSuccessCount:I

.field private mSuccessImage:[B

.field private mTrackThread:Ljava/lang/Thread;

.field private myAppName:Ljava/lang/String;

.field private oldImage:[B

.field private uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler<",
            "Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientation:I

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessCount:I

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBound:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBackKeyPressed:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsRegisterSuccess:Z

    .line 139
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 156
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsNv21DataReady:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsNv21DataReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->setTextViewState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->registerUser()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessImage:[B

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;[B)[B
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessImage:[B

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->insertFace()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsKilled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsRegisterSuccess:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsRegisterSuccess:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessCount:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessCount:I

    return p1
.end method

.method static synthetic access$1808(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBackKeyPressed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mMaskView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->stopThread()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mHintTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation3:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/asus/faceunlockservice/IFaceUnlockService;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientation:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mRotation:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsTracking:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsTracking:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->oldImage:[B

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;[B)[B
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->oldImage:[B

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/Image;I)[B
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object p0

    return-object p0
.end method

.method private bindService()V
    .locals 3

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.faceunlockservice"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service.remote"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 327
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method private static getDataFromImage(Landroid/media/Image;I)[B
    .locals 20

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 339
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 340
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    mul-int v8, v5, v6

    .line 342
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    .line 343
    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    move v13, v2

    move v11, v9

    move v12, v11

    .line 346
    :goto_1
    array-length v14, v7

    if-ge v11, v14, :cond_d

    if-eqz v11, :cond_6

    if-eq v11, v2, :cond_4

    if-eq v11, v1, :cond_2

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_3

    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move v13, v2

    goto :goto_3

    :cond_3
    if-ne v0, v1, :cond_7

    move v13, v1

    goto :goto_2

    :cond_4
    if-ne v0, v2, :cond_5

    move v13, v2

    :goto_2
    move v12, v8

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_7

    add-int/lit8 v12, v8, 0x1

    move v13, v1

    goto :goto_3

    :cond_6
    move v13, v2

    move v12, v9

    .line 371
    :cond_7
    :goto_3
    aget-object v14, v7, v11

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 372
    aget-object v15, v7, v11

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    .line 373
    aget-object v16, v7, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-nez v11, :cond_8

    move/from16 v16, v9

    goto :goto_4

    :cond_8
    move/from16 v16, v2

    :goto_4
    shr-int v9, v5, v16

    shr-int v2, v6, v16

    .line 377
    iget v0, v3, Landroid/graphics/Rect;->top:I

    shr-int v0, v0, v16

    mul-int/2addr v0, v15

    move/from16 v18, v5

    iget v5, v3, Landroid/graphics/Rect;->left:I

    shr-int v5, v5, v16

    mul-int/2addr v5, v1

    add-int/2addr v0, v5

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    if-ne v13, v5, :cond_9

    .line 382
    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v9

    move-object/from16 v17, v3

    move v3, v9

    goto :goto_7

    :cond_9
    add-int/lit8 v16, v9, -0x1

    mul-int v16, v16, v1

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    const/4 v5, 0x0

    .line 386
    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_6
    if-ge v5, v9, :cond_a

    mul-int v19, v5, v1

    .line 388
    aget-byte v19, v10, v19

    aput-byte v19, v4, v12

    add-int/2addr v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_b

    .line 393
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    goto :goto_5

    :cond_c
    move-object/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v5, v18

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_d
    return-object v4

    .line 335
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initUiHandler()V
    .locals 1

    .line 294
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    return-void
.end method

.method private initView()V
    .locals 3

    .line 194
    sget v0, Lcom/android/settings/R$id;->enroll_animation1:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation1:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/android/settings/R$id;->enroll_animation2:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation2:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/android/settings/R$id;->enroll_animation3:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation3:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcom/android/settings/R$id;->camera_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    .line 198
    sget v0, Lcom/android/settings/R$id;->mask_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mMaskView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    .line 199
    sget v0, Lcom/android/settings/R$id;->hint_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 200
    sget v1, Lcom/android/settings/R$id;->hint_tv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mHintTv:Landroid/widget/TextView;

    .line 201
    sget v1, Lcom/android/settings/R$id;->percent_tv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv:Landroid/widget/TextView;

    .line 202
    sget v1, Lcom/android/settings/R$id;->percent2_tv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv2:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mHintTv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv2:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 209
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$3;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 268
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->setupImageReaderLinstener(Landroid/media/ImageReader$OnImageAvailableListener;)V

    return-void
.end method

.method private insertFace()V
    .locals 4

    :try_start_0
    const-string v0, "content://com.asus.gallery.provider.UserProfileProvider/user_face"

    .line 667
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 668
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "raw_user_face"

    .line 669
    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSuccessImage:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "image_format"

    const/16 v3, 0x11

    .line 670
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "image_width"

    const/16 v3, 0x280

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "image_height"

    const/16 v3, 0x1e0

    .line 672
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "rotate"

    .line 673
    iget v3, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mRotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert face failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacelockEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static isImageFormatSupported(Landroid/media/Image;)Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const v0, 0x32315659

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private registerUser()V
    .locals 4

    :try_start_0
    const-string v0, "user"

    .line 627
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 628
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 629
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 630
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    invoke-interface {v2, v0, v1}, Lcom/asus/faceunlockservice/IFaceUnlockService;->setActiveUser(J)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    invoke-interface {v0}, Lcom/asus/faceunlockservice/IFaceUnlockService;->endEnrollment()V

    .line 632
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mPercentTv:Landroid/widget/TextView;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mMaskView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->setProgress(I)V

    const/16 v0, -0x63

    .line 636
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 637
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "STATE"

    .line 638
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 640
    iput v2, v1, Landroid/os/Message;->what:I

    .line 641
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "FacelockEnrollEnrolling"

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$9;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$9;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    const-wide/16 v2, 0x1130

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 661
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setTextViewState(I)V
    .locals 5

    const/16 v0, -0x63

    const/4 v1, 0x1

    const-string v2, ""

    if-eq p1, v0, :cond_1

    const-string v0, "FUR_LOW_QUALITY"

    const-string v3, "FacelockEnrollEnrolling"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 496
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FUR_SUCCESS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mFaceRegisterCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mFaceRegisterCount:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v1

    .line 498
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mFaceRegisterCount:I

    .line 500
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$7;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    const-wide/16 v3, 0x32

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 551
    :pswitch_1
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 513
    :pswitch_2
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 520
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 523
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 526
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 529
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_3:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 532
    :pswitch_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_4:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 547
    :pswitch_9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_error_msg_5:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_a
    const-string p1, "FUR_EYES_CLOSED"

    .line 535
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_b
    const-string p1, "FUR_KEEP"

    .line 538
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_c
    const-string p1, "FUR_AUTHENTICATE_FAIL"

    .line 541
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_d
    const-string p1, "FUR_AUTHENTICATE_WARNING"

    .line 544
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->uiHandler:Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$8;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "temp_face_count"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mHintTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopThread()V
    .locals 1

    const/4 v0, 0x1

    .line 596
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsKilled:Z

    .line 597
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mTrackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 600
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mTrackThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 602
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent()Landroid/content/Intent;
    .locals 1

    .line 687
    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 619
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsRegisterSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBackKeyPressed:Z

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->bindService()V

    .line 181
    sget p1, Lcom/android/settings/R$layout;->asus_facelock_enroll_enrolling:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(I)V

    .line 182
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_facelock_enroll_start_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setHeaderText(I)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->myAppName:Ljava/lang/String;

    .line 184
    new-instance p1, Lcom/android/settings/privacy/CameraToggleController;

    const-string v0, "cam_toggle"

    invoke-direct {p1, p0, v0}, Lcom/android/settings/privacy/CameraToggleController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraToggleController:Lcom/android/settings/privacy/CameraToggleController;

    .line 185
    invoke-virtual {p1}, Lcom/android/settings/privacy/SensorToggleController;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialog:Z

    .line 187
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->initView()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->initUiHandler()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 609
    invoke-super {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onDestroy()V

    .line 610
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->stopPreview()V

    .line 611
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 613
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->stopThread()V

    .line 592
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 422
    invoke-super {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onResume()V

    .line 423
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mFaceRegisterCount:I

    .line 426
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsBackKeyPressed:Z

    .line 428
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mIsKilled:Z

    .line 429
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mEnrollAnimation1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 431
    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mTrackThread:Ljava/lang/Thread;

    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    sget v1, Lcom/android/settings/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->security_settings_facelock_preference_title:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mTrackThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 415
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialogCount:I

    .line 416
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialog:Z

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mCameraView:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->updatePreview()V

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialog:Z

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialogCount:I

    if-nez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 407
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mShowSensorUseDialogCount:I

    .line 408
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->showSensorUseDialog(I)V

    :cond_1
    return-void
.end method

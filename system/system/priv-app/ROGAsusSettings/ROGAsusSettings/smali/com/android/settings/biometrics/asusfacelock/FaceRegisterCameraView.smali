.class public Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;
.super Landroid/view/SurfaceView;
.source "FaceRegisterCameraView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field public mBuffer:[B

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFacing:I

.field public mDegrees:I

.field private mIsOpened:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field public mPreviewHeight:I

.field private mPreviewScale:F

.field private mPreviewSize:Landroid/hardware/Camera$Size;

.field public mPreviewWidth:I

.field private mResolution:I

.field private matrix:Landroid/graphics/Matrix;

.field private previewScaleX:F

.field private previewScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->matrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->matrix:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCameraFacing:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->openCamera(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->initParameters()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)Landroid/hardware/Camera;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->updateCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleX:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleX:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleY:F

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleY:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)Landroid/graphics/Matrix;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private focusOnPoint(II)V
    .locals 9

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch point ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FaceRegisterCameraView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    if-lez v4, :cond_5

    .line 303
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    .line 304
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    .line 305
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    shr-int/lit8 v6, v6, 0x3

    sub-int v7, p1, v6

    sub-int v8, p2, v6

    add-int/2addr p1, v6

    add-int/2addr p2, v6

    mul-int/lit16 v7, v7, 0x7d0

    .line 310
    div-int/2addr v7, v4

    const/16 v6, 0x3e8

    sub-int/2addr v7, v6

    mul-int/lit16 v8, v8, 0x7d0

    .line 311
    div-int/2addr v8, v5

    sub-int/2addr v8, v6

    mul-int/lit16 p1, p1, 0x7d0

    .line 312
    div-int/2addr p1, v4

    sub-int/2addr p1, v6

    mul-int/lit16 p2, p2, 0x7d0

    .line 313
    div-int/2addr p2, v5

    sub-int/2addr p2, v6

    const/16 v4, -0x3e8

    if-ge v7, v4, :cond_1

    move v7, v4

    :cond_1
    if-ge v8, v4, :cond_2

    move v8, v4

    :cond_2
    if-le p1, v6, :cond_3

    move p1, v6

    :cond_3
    if-le p2, v6, :cond_4

    goto :goto_0

    :cond_4
    move v6, p2

    .line 319
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus area ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 322
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v8, p1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x258

    invoke-direct {v1, v2, p1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 326
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 327
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 328
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 330
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getFitPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 7

    .line 178
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    .line 181
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SupportedPreviewSize, width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FaceRegisterCameraView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewScale:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 187
    iget v4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mResolution:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    if-le v2, v4, :cond_1

    move v1, v0

    move v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    return-object p0
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

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->getScreenScale()F

    move-result p0

    return p0
.end method

.method private getScreenScale()F
    .locals 4

    .line 274
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 275
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 276
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    .line 278
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    div-float v1, v0, p0

    goto :goto_0

    :cond_0
    div-float v1, p0, v0

    .line 286
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMetrics.widthPixels : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FaceRegisterCameraView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMetrics.heightPixels : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
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

    .line 291
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

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 68
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCameraFacing:I

    const/16 p2, 0x1e0

    .line 69
    iput p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mResolution:I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->getPreviewScale(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewScale:F

    .line 71
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initParameters()V
    .locals 4

    const-string v0, "auto"

    const-string v1, "off"

    .line 129
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 135
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 139
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x11

    .line 142
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    const/16 v0, 0x100

    .line 143
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/4 v0, 0x0

    .line 144
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initPreviewBuffer()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewWidth:I

    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mBuffer:[B

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPreviewBuffer() mBuffer.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mBuffer:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceRegisterCameraView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private initPreviewSize()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->getFitPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 168
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewWidth:I

    .line 169
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewHeight:I

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreviewSize() mPreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceRegisterCameraView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private openCamera(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->releaseCamera()V

    .line 117
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 119
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 120
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p1, :cond_0

    .line 121
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mIsOpened:Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCameraDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v0, 0x5a

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 228
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xb4

    .line 225
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x10e

    .line 222
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    goto :goto_0

    .line 216
    :cond_3
    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    .line 232
    :goto_0
    :try_start_0
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mDegrees:I

    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string p0, "FaceRegisterCameraView"

    const-string p1, "setDisplayOrientation err"

    .line 236
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateCamera()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 156
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->setCameraDisplayOrientation(Landroid/app/Activity;Landroid/hardware/Camera;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->initPreviewSize()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->initPreviewBuffer()V

    .line 159
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getPreviewScaleX()F
    .locals 0

    .line 409
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleX:F

    return p0
.end method

.method public getPreviewScaleY()F
    .locals 0

    .line 413
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->previewScaleY:F

    return p0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewSize:Landroid/hardware/Camera$Size;

    return-object p0
.end method

.method public getSupportPreviewSize()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 371
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAutoFocus : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRegisterCameraView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 429
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3f800000    # 1.0f

    if-ge p1, p2, :cond_2

    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 434
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    mul-int/lit8 v0, p1, 0x4

    .line 440
    div-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_1
    mul-int/lit8 v0, p1, 0x10

    .line 443
    div-int/lit8 v0, v0, 0x9

    goto :goto_2

    :cond_2
    int-to-float v2, p2

    mul-float/2addr v2, v1

    int-to-float v1, p1

    div-float/2addr v2, v1

    .line 448
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewScale:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_3

    :goto_0
    move v0, p1

    :goto_1
    move v1, p2

    goto :goto_3

    :cond_3
    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    mul-int/lit8 v0, p2, 0x4

    .line 454
    div-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, p1, 0x9

    .line 457
    div-int/lit8 v0, v0, 0x10

    :goto_2
    move v1, v0

    move v0, p1

    .line 462
    :goto_3
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

    const-string p2, "FaceRegisterCameraView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
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

    .line 465
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->focusOnPoint(II)V

    .line 477
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public releaseCamera()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const-string v0, "FaceRegisterCameraView"

    const-string v1, "releaseCamera()"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 258
    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mIsOpened:Z

    :cond_0
    return-void
.end method

.method protected setExposure(I)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exposure value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceRegisterCameraView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 247
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

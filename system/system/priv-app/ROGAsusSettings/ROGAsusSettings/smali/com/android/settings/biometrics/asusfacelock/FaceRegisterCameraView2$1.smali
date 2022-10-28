.class Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;
.super Ljava/lang/Object;
.source "FaceRegisterCameraView2.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mGotSecondCallback:Z

.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .line 112
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mCameraId:Ljava/lang/String;

    const-string p2, "FaceRegisterCameraView2"

    if-nez p1, :cond_3

    const/4 p1, 0x3

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    .line 114
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 116
    :try_start_0
    aget-object v2, v0, v1

    .line 117
    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    .line 118
    invoke-static {v3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 119
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "Found a front-facing camera"

    .line 121
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    const/16 v0, 0x23

    const/4 v1, 0x2

    const/16 v3, 0x1e0

    const/16 v4, 0x280

    invoke-static {v4, v3, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$402(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 125
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 129
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v4, v3}, Landroid/util/Size;-><init>(II)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewWidth:I

    .line 131
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewHeight:I

    if-le p3, p4, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    int-to-float p3, p3

    iget v1, v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$702(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F

    .line 134
    iget-object p3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    int-to-float p4, p4

    iget v0, p3, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    invoke-static {p3, p4}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$802(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    int-to-float p3, p3

    iget v1, v0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$702(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F

    .line 137
    iget-object p3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    int-to-float p4, p4

    iget v0, p3, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    invoke-static {p3, p4}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$802(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;F)F

    .line 140
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Preview size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    .line 142
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-interface {p3, p4, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 143
    iput-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to list cameras"

    .line 150
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string p0, "Didn\'t find any front-facing cameras"

    .line 152
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 154
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mGotSecondCallback:Z

    if-nez p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p0, "Aborting camera open because it hadn\'t been closed"

    .line 156
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mCameraId:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p4}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object p4

    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    .line 162
    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/os/Handler;

    move-result-object v0

    .line 161
    invoke-virtual {p1, p3, p4, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p3, "Failed to configure output surface"

    .line 164
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mGotSecondCallback:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FaceRegisterCameraView2"

    const-string v0, "Surface created"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mCameraId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->mGotSecondCallback:Z

    .line 96
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FaceRegisterCameraView2"

    const-string v0, "Surface destroyed"

    .line 101
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$200(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V

    return-void
.end method

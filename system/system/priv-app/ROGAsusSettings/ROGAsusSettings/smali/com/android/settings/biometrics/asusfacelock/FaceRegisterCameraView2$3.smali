.class Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "FaceRegisterCameraView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1202(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Configuration error on device \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRegisterCameraView2"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6

    const-string v0, "FaceRegisterCameraView2"

    const-string v1, "Finished configuring camera outputs"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1202(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 227
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    .line 232
    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 231
    invoke-static {v2, v3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1302(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 233
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 236
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 238
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1402(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    .line 244
    invoke-static {v3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/os/Handler;

    move-result-object v3

    .line 243
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Failed to make repeating preview request"

    .line 247
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Failed to build preview request"

    .line 250
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p1, "Holder didn\'t exist when trying to formulate preview request"

    .line 254
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$3;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

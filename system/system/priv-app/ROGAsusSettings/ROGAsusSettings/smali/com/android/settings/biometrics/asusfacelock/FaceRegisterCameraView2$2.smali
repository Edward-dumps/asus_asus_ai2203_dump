.class Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 175
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    const-string p1, "FaceRegisterCameraView2"

    const-string v0, "Camera was disconnected"

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$900(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 201
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$902(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Camera error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceRegisterCameraView2"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const-string v0, "FaceRegisterCameraView2"

    const-string v1, "Successfully opened camera"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 181
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v1, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$902(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {v3}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    iget-object v3, v2, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mCaptureSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 184
    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Landroid/os/Handler;

    move-result-object v2

    .line 183
    invoke-virtual {p1, v1, v3, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Interrupted while trying to lock camera closing."

    .line 188
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Failed to create a capture session"

    .line 186
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->access$1100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 191
    throw p1
.end method

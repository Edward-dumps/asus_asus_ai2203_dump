.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;
.super Ljava/lang/Thread;
.source "FacelockEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1600(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1700(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x64

    .line 436
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getPreviewScaleX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getPreviewScaleY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getPreviewScaleX()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->getPreviewScaleY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->getMaskRect(FF)Landroid/graphics/Rect;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1000(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$702(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    .line 444
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B

    move-result-object v1

    monitor-enter v1

    const/4 v3, 0x0

    .line 447
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v4

    iget v7, v4, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewWidth:I

    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    .line 448
    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v4

    iget v8, v4, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->mPreviewHeight:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v9, v4, 0x2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v4, v4, 0x3

    const/4 v13, 0x2

    div-int/lit8 v11, v4, 0x2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 447
    invoke-interface/range {v5 .. v12}, Lcom/asus/faceunlockservice/IFaceUnlockService;->enroll([BIIIIII)I

    move-result v0

    .line 449
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 450
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "STATE"

    .line 451
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 453
    iput v3, v4, Landroid/os/Message;->what:I

    .line 454
    iget-object v5, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v5}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v4, "FacelockEnrollEnrolling"

    .line 456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerImage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v5}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1402(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;[B)[B

    .line 459
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1808(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    .line 460
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1800(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v4}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object v4

    invoke-interface {v4}, Lcom/asus/faceunlockservice/IFaceUnlockService;->getEnrollmentSteps()I

    move-result v4

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1900(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$2000(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0, v3}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1802(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;I)I

    .line 465
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0, v2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1702(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    .line 466
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/handler/WeakHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 470
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 472
    :cond_1
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0, v3}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$702(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    .line 474
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0, v3}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1002(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    goto/16 :goto_0

    .line 472
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

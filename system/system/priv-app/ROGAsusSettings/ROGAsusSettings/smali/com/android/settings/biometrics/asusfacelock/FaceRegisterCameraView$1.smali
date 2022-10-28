.class Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;
.super Ljava/lang/Object;
.source "FaceRegisterCameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SurfaceHolder Changed. width : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceRegisterCameraView"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$400(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V

    if-le p3, p4, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    int-to-float p2, p3

    iget p3, p1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewWidth:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$502(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F

    .line 98
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    int-to-float p2, p4

    iget p3, p1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$602(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    int-to-float p2, p3

    iget p3, p1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewHeight:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$502(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F

    .line 101
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    int-to-float p2, p4

    iget p3, p1, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->mPreviewWidth:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$602(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;F)F

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$700(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p2}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$500(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)F

    move-result p2

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$600(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FaceRegisterCameraView"

    const-string v0, "SurfaceHolder created"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$100(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$200(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->access$300(Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FaceRegisterCameraView"

    const-string v0, "SurfaceHolder Destroyed"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView;->releaseCamera()V

    return-void
.end method

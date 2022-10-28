.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "FacelockEnrollEnrolling.java"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;
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

    .line 140
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IZ)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$002(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    if-eqz p2, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->stopPreview()V

    .line 147
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->maskCameraPreview()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;->unmaskCameraPreview()V

    .line 152
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterRectMaskView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

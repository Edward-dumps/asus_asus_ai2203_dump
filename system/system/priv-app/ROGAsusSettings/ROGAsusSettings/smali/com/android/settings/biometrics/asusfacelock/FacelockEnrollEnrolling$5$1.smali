.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;
.super Ljava/lang/Object;
.source "FacelockEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->handleMsg(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;->this$1:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;->this$1:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;

    iget-object v0, v0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/biometrics/asusfacelock/FaceRegisterCameraView2;->stopPreview()V

    .line 309
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5$1;->this$1:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$5;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$1200(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)V

    return-void
.end method

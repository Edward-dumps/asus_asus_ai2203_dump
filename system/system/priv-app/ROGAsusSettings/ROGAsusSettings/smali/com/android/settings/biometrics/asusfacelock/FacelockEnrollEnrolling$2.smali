.class Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;
.super Ljava/lang/Object;
.source "FacelockEnrollEnrolling.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 156
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p2}, Lcom/asus/faceunlockservice/IFaceUnlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$302(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    .line 160
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$402(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    .line 162
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object p0

    invoke-interface {p0}, Lcom/asus/faceunlockservice/IFaceUnlockService;->getSdkType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FacelockEnrollEnrolling"

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FaceUnlockService use sdk: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$402(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Z)Z

    .line 172
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;->access$302(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollEnrolling;Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-void
.end method

.class Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;
.super Ljava/lang/Object;
.source "FacelockSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 164
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$000(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$002(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;J)J

    .line 165
    invoke-static {p2}, Lcom/asus/faceunlockservice/IFaceUnlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$102(Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    .line 166
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;Z)Z

    .line 169
    :try_start_0
    invoke-static {}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$100()Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object p0

    invoke-interface {p0}, Lcom/asus/faceunlockservice/IFaceUnlockService;->getSdkType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceLockSettingsFrg"

    .line 170
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

    .line 172
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;Z)Z

    const/4 p0, 0x0

    .line 179
    invoke-static {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$102(Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-void
.end method

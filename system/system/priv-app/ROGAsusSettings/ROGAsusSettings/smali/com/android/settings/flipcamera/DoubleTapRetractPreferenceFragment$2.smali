.class Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;
.super Ljava/lang/Object;
.source "DoubleTapRetractPreferenceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "DoubleTapRetractPreferenceFragment"

    const-string v0, "MotorService connected!"

    .line 157
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;

    invoke-static {p2}, Lcom/asus/motorservice/IMotorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/motorservice/IMotorService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->access$102(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DoubleTapRetractPreferenceFragment"

    const-string v0, "MotorService disconnected!"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->access$102(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;

    return-void
.end method

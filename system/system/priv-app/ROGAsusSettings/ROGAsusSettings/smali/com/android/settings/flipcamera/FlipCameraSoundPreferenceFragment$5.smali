.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;
.super Ljava/lang/Object;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "FlipCameraSoundPreference"

    const-string v0, "MotorService connected!"

    .line 241
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p2}, Lcom/asus/motorservice/IMotorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/motorservice/IMotorService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$102(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "FlipCameraSoundPreference"

    const-string v0, "MotorService disconnected!"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$5;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$102(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;Lcom/asus/motorservice/IMotorService;)Lcom/asus/motorservice/IMotorService;

    return-void
.end method

.class Lcom/android/settings/display/FrameRatePreferenceController$1;
.super Ljava/lang/Object;
.source "FrameRatePreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FrameRatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRatePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRatePreferenceController;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$1;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "FrameRatePreferenceController"

    const-string v0, "CentralControlService is connected"

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$1;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-static {p2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/display/FrameRatePreferenceController;->access$002(Lcom/android/settings/display/FrameRatePreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/display/FrameRatePreferenceController$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/FrameRatePreferenceController$1$1;-><init>(Lcom/android/settings/display/FrameRatePreferenceController$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController$1;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/display/FrameRatePreferenceController;->access$002(Lcom/android/settings/display/FrameRatePreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    const-string p0, "FrameRatePreferenceController"

    const-string p1, "CentralControlService is disconnected"

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

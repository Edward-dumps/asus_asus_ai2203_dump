.class Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;
.super Ljava/lang/Object;
.source "FrameRateLayoutPreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FrameRateLayoutPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 325
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.asus.hardwarestub.centralcontrol.FPSCentralControlService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FrameRatePreference"

    if-nez v0, :cond_1

    const-string v0, "com.asus.powersaver.PowerSaverService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "PowerSaverService is connected"

    .line 337
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$602(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 339
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$700(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Z

    goto :goto_0

    :cond_1
    const-string p1, "CentralControlService is connected"

    .line 327
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$402(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 329
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5$1;-><init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 347
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.asus.hardwarestub.centralcontrol.FPSCentralControlService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FrameRatePreference"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.asus.powersaver.PowerSaverService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0, v2}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$602(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/IBinder;)Landroid/os/IBinder;

    const-string p0, "PowerSaverService is disconnected"

    .line 354
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0, v2}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$402(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    const-string p0, "CentralControlService is disconnected"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

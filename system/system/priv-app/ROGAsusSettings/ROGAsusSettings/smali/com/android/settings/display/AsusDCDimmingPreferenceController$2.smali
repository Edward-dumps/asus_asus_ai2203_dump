.class Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;
.super Ljava/lang/Object;
.source "AsusDCDimmingPreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AsusDCDimmingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AsusDCDimmingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AsusDCDimmingPreferenceController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;->this$0:Lcom/android/settings/display/AsusDCDimmingPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "AsusDCDimmingPreferenceController"

    const-string v0, "CentralControlService is connected"

    .line 116
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;->this$0:Lcom/android/settings/display/AsusDCDimmingPreferenceController;

    invoke-static {p2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->access$102(Lcom/android/settings/display/AsusDCDimmingPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2$1;-><init>(Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;->this$0:Lcom/android/settings/display/AsusDCDimmingPreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->access$102(Lcom/android/settings/display/AsusDCDimmingPreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    const-string p0, "AsusDCDimmingPreferenceController"

    const-string p1, "CentralControlService is disconnected"

    .line 128
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

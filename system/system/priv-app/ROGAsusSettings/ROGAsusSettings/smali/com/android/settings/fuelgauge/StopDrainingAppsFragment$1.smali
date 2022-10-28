.class Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;
.super Ljava/lang/Object;
.source "StopDrainingAppsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/IPowerSaverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->access$002(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 53
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->access$102(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Z)Z

    .line 54
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    const-class p1, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->access$200(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->access$002(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 60
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;->this$0:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->access$102(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Z)Z

    return-void
.end method

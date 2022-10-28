.class Lcom/android/settings/fuelgauge/PowerUsageSummary$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/IPowerSaverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$002(Lcom/android/settings/fuelgauge/PowerUsageSummary;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 113
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$102(Lcom/android/settings/fuelgauge/PowerUsageSummary;Z)Z

    .line 114
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const-class p2, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const-class v0, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/SwitchByBatteryLevelPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const-class v0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const-class p2, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$500(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setPowerSaverManager(Lcom/android/settings/fuelgauge/IPowerSaverManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$002(Lcom/android/settings/fuelgauge/PowerUsageSummary;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 123
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$102(Lcom/android/settings/fuelgauge/PowerUsageSummary;Z)Z

    return-void
.end method

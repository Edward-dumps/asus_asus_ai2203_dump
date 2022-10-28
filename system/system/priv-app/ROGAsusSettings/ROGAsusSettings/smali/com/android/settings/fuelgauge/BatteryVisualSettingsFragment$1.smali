.class Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;
.super Ljava/lang/Object;
.source "BatteryVisualSettingsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/IPowerSaverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->access$002(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 34
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->access$102(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Z)Z

    .line 36
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    const-class p1, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->access$200(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->access$002(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 42
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;->this$0:Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->access$102(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Z)Z

    return-void
.end method

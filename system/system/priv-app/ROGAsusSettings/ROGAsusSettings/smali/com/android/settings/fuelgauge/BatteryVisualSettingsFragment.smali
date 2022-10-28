.class public Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BatteryVisualSettingsFragment.java"


# instance fields
.field private bound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    .line 28
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment$1;-><init>(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "VisualSettingsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method public getPowerSavingWarningActionbarEnabled()Z
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    const-string v1, "VisualSettingsFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 88
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 95
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getPowerSavingWarningActionbarEnabled()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    move v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "getPowerSavingWarningActionbarEnabled: "

    .line 97
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v2
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->battery_visual_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 50
    const-class p1, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/UltraDurableModeHintPreferenceController;->setParentFragment(Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.powersaver"

    const-string v3, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    :cond_0
    return-void
.end method

.method public updatePowerSavingWarningActionbarEnabled(Z)Z
    .locals 3

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->bound:Z

    const-string v1, "VisualSettingsFragment"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 110
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryVisualSettingsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->updatePowerSavingWarningActionbarEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "getPowerSavingWarningActionbarEnabled: "

    .line 112
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

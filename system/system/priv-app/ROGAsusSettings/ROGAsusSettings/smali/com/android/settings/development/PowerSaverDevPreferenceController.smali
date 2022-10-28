.class public Lcom/android/settings/development/PowerSaverDevPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "PowerSaverDevPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;


# instance fields
.field private final mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "power"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/development/PowerSaverDevPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "battery_saver"

    return-object p0
.end method

.method public onBatteryChanged(Z)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    .line 89
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 94
    sget-object p1, Lcom/android/settings/development/PowerSaverDevPreferenceController$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    .line 80
    iget-object p0, p0, Lcom/android/settings/development/PowerSaverDevPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

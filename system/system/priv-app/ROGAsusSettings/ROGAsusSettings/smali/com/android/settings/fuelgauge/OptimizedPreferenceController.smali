.class public Lcom/android/settings/fuelgauge/OptimizedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OptimizedPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field KEY_OPTIMIZED_PREF:Ljava/lang/String;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "optimized_pref"

    .line 36
    iput-object v0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->KEY_OPTIMIZED_PREF:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->KEY_OPTIMIZED_PREF:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->KEY_OPTIMIZED_PREF:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->OPTIMIZED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;)V

    const-string p0, "OPTIMIZED_PREF"

    const-string p1, "Set optimized"

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OPTIMIZED_PREF"

    if-nez v0, :cond_0

    const-string p0, "invalid package name, optimized states only"

    .line 52
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 54
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string p0, "is system or default app, disable pref"

    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    move-object p0, p1

    check-cast p0, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppUsageState()Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    move-result-object p0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->OPTIMIZED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    if-ne p0, v0, :cond_2

    const-string p0, "is optimized states"

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

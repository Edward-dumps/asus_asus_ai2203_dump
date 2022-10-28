.class public Lcom/android/settings/development/SoftApBeaconProtectionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SoftApBeaconProtectionPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/asus/wifi/AsusWifiAPI;

    invoke-direct {v0, p1}, Lcom/asus/wifi/AsusWifiAPI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/SoftApBeaconProtectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "softap_beacon_protection"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 57
    invoke-static {}, Lcom/android/settingslib/Utils;->isRog3()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTequila()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/development/SoftApBeaconProtectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    invoke-virtual {p0}, Lcom/asus/wifi/AsusWifiAPI;->isSoftApBeaconProtFeatureSupported()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    iget-object p0, p0, Lcom/android/settings/development/SoftApBeaconProtectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    invoke-virtual {p0, p1}, Lcom/asus/wifi/AsusWifiAPI;->enableSoftApBeaconProtFeature(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/settings/development/SoftApBeaconProtectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    invoke-virtual {p1}, Lcom/asus/wifi/AsusWifiAPI;->isSoftApBeaconProtFeatureEnabled()Z

    move-result p1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

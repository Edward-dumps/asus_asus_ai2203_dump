.class public Lcom/android/settings/development/WifiNewNetworkAutoConnectionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WifiNewNetworkAutoConnectionPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/asus/wifi/AsusWifiAPI;

    invoke-direct {v0, p1}, Lcom/asus/wifi/AsusWifiAPI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/WifiNewNetworkAutoConnectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_new_network_auto_connection"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 58
    invoke-static {}, Lcom/android/settings/Utils;->isObiwan()Z

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

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/WifiNewNetworkAutoConnectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/wifi/AsusWifiAPI;->enableNewNetworkAutoConnection(Z)V

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 69
    iget-object p0, p0, Lcom/android/settings/development/WifiNewNetworkAutoConnectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    invoke-virtual {p0, p1}, Lcom/asus/wifi/AsusWifiAPI;->enableNewNetworkAutoConnection(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/android/settings/development/WifiNewNetworkAutoConnectionPreferenceController;->mAsusWifiAPI:Lcom/asus/wifi/AsusWifiAPI;

    invoke-virtual {p1}, Lcom/asus/wifi/AsusWifiAPI;->isNewNetworkAutoConnectionEnabled()Z

    move-result p1

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

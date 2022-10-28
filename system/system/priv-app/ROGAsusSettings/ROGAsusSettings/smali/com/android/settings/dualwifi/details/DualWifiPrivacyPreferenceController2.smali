.class public Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DualWifiPrivacyPreferenceController2.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;


# static fields
.field private static final KEY_WIFI_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final PREF_RANDOMIZATION_NONE:I = 0x1

.field private static final PREF_RANDOMIZATION_PERSISTENT:I


# instance fields
.field private mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    return-void
.end method

.method private getDualWifiEntryPrivacy(Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 134
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static translatePrefValueToMacRandomizedValue(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSummary(Landroidx/preference/ListPreference;I)V
    .locals 0

    .line 114
    invoke-static {p2}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result p0

    .line 115
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->isConnectedMacRandomizationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method getRandomizationValue()I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getPrivacy()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onForget(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onForget(Lcom/android/settings/dualwifi/DualWifiDialog2;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 69
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 70
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setPrivacy(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    .line 78
    :cond_0
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->updateSummary(Landroidx/preference/ListPreference;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onScan(Lcom/android/settings/dualwifi/DualWifiDialog2;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onScan(Lcom/android/settings/dualwifi/DualWifiDialog2;Ljava/lang/String;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->getDualWifiEntryPrivacy(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getPrivacy()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->getDualWifiEntryPrivacy(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setPrivacy(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mPreference:Landroidx/preference/Preference;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setDualWifiEntry(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 54
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->getRandomizationValue()I

    move-result v1

    .line 56
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSetPrivacy()Z

    move-result v2

    .line 57
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->updateSummary(Landroidx/preference/ListPreference;I)V

    if-nez v2, :cond_0

    .line 63
    sget p0, Lcom/android/settings/R$string;->wifi_privacy_settings_ephemeral_summary:I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

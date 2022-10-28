.class public Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DualWifiMeteredPreferenceController2.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"


# instance fields
.field private mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 1

    const-string v0, "metered"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-void
.end method

.method private getDualWifiEntryMeteredChoice(Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 92
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private updateSummary(Landroidx/preference/ListPreference;I)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

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

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method getMeteredOverride()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 61
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getMeteredChoice()I

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
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setMeteredChoice(I)V

    :cond_1
    const-string p2, "com.android.providers.settings"

    .line 52
    invoke-static {p2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 53
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->getMeteredOverride()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->updateSummary(Landroidx/preference/ListPreference;I)V

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

    .line 78
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSetMeteredChoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->getDualWifiEntryMeteredChoice(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getMeteredChoice()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->getDualWifiEntryMeteredChoice(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setMeteredChoice(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mPreference:Landroidx/preference/Preference;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 33
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->getMeteredOverride()I

    move-result v1

    .line 35
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSetMeteredChoice()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/details/DualWifiMeteredPreferenceController2;->updateSummary(Landroidx/preference/ListPreference;I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

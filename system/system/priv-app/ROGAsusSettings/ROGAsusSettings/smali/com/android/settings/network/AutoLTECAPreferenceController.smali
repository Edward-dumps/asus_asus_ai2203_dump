.class public Lcom/android/settings/network/AutoLTECAPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoLTECAPreferenceController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoLTECAPreferenceController"


# instance fields
.field private AUTO_LTE_CA_OFF:I

.field private AUTO_LTE_CA_ON:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 23
    iput p2, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_ON:I

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_OFF:I

    .line 28
    iput-object p1, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 39
    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq p0, v2, :cond_1

    .line 40
    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "hide_carrier_network_settings_bool"

    .line 42
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hide_preferred_network_type_bool"

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return v1

    .line 48
    :cond_1
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getAsusNetworkTypeSetId()I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_2

    .line 49
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 50
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_2

    if-eq p1, v2, :cond_2

    .line 52
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getMobileSlot()I

    move-result p1

    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    return-void
.end method

.method public isChecked()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_ON:I

    const-string v2, "asus_auto_lte_ca"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget p0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_ON:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 73
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChecked enable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AutoLTECAPreferenceController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoLTECAPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_ON:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/network/AutoLTECAPreferenceController;->AUTO_LTE_CA_OFF:I

    :goto_0
    const-string p1, "asus_auto_lte_ca"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

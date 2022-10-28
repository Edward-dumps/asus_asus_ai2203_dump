.class public Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusStationBatteryVersionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_TWINVIEW_BATTERY_VERSION:Ljava/lang/String; = "twinview_battery_version"

.field private static final TAG:Ljava/lang/String; = "AsusStationBatteryVersionPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "twinview_battery_version"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mContext:Landroid/content/Context;

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

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "twinview_battery_version"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/16 p0, 0xf

    .line 52
    invoke-static {p0}, Lcom/android/settings/firmware/FirmwareManager;->canShowFirmwareVersion(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "twinview_battery_version"

    return-object p0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/16 p1, 0xf

    .line 70
    invoke-static {p1}, Lcom/android/settings/firmware/FirmwareManager;->getFirmwareVersion(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->dockingType(Landroid/content/Context;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EXTRA_DOCK_STATE_ASUS_STATION"

    invoke-static {v1}, Lcom/android/settings/Utils;->intentReflection(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->asus_gaming_unconnected:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

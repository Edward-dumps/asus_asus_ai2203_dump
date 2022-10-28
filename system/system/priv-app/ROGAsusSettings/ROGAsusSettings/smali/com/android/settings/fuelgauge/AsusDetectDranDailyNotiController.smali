.class public Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AsusDetectDranDailyNotiController.java"


# static fields
.field public static final KEY_PREFERENCES:Ljava/lang/String; = "battery_draning_notifiy"

.field private static final TAG:Ljava/lang/String; = "AsusDetectDranDailyNotiController"


# instance fields
.field private mContext:Landroid/content/Context;

.field mParent:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mContext:Landroid/content/Context;

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

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_draning_notifiy"

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mPreference:Landroidx/preference/SwitchPreference;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "battery_draning_notifiy"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mParent:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->getDetectDrainDailyState()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mParent:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->updateDetectDrainDailyState(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setParentFragment(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mParent:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mParent:Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->getDetectDrainDailyState()Z

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

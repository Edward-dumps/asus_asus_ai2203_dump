.class public Lcom/android/settings/fuelgauge/SystemModesPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SystemModesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "system_modes"

.field private static final TAG:Ljava/lang/String; = "SystemMode"


# instance fields
.field private mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

.field private mPref:Landroidx/preference/Preference;

.field private mSystemMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "system_modes"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "system_modes"

    .line 39
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mPref:Landroidx/preference/Preference;

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mSystemMode:Ljava/lang/String;

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

.method public setParentFragment(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSystemMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mSystemMode:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->mPref:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

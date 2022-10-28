.class public Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SwitchBySchedulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "switch_by_schedule"

.field private static final TAG:Ljava/lang/String; = "SwitchBySchedule"


# instance fields
.field private mBatteryMode:Ljava/lang/String;

.field private mDueTime:Ljava/lang/String;

.field private mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

.field private mStartTime:Ljava/lang/String;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "switch_by_schedule"

    .line 31
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

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "switch_by_schedule"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

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
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mBatteryMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mStartTime:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mDueTime:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->switch_by_schedule_summary:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mBatteryMode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mStartTime:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mDueTime:Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 73
    iget-object p0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateSwitchByScheduleState(Z)Z

    move-result p0

    return p0
.end method

.method public setParentFragment(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSwitchByScheduleState()Z

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSchedulerUsageMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mBatteryMode:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSchedulerStartTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mStartTime:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mParent:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSchedulerDueTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mDueTime:Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SwitchBySchedulePreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

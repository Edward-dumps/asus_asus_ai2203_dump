.class public Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settings/fuelgauge/BatteryPreferenceController;


# static fields
.field private static final BATTERY_MAX_LEVEL:I = 0x64

.field static final KEY_BATTERY_HEADER:Ljava/lang/String; = "battery_header"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

.field private mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

.field mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field private mHost:Landroidx/preference/PreferenceFragmentCompat;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    return-void
.end method

.method private formatBatteryPercentageText(I)Ljava/lang/CharSequence;
    .locals 4

    .line 190
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_header_title_alternate:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 191
    invoke-static {}, Landroid/icu/text/NumberFormat;->getIntegerInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 190
    invoke-static {p0, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 6

    .line 118
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBatteryDefenderOn(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isScheduleChargingOnGoing(Lcom/android/settings/fuelgauge/IPowerSaverManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScheduleChargeLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSteadyChargingOnGoing(Lcom/android/settings/fuelgauge/IPowerSaverManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSteadyChargeLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 124
    :cond_2
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 128
    :cond_3
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    iget-boolean v5, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v5, :cond_4

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->battery_state_and_duration:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_tip_early_heads_up_done_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_state_and_duration:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    aput-object p1, v4, v2

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    if-eqz v0, :cond_6

    .line 139
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->low_battery_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->battery_state_and_duration:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    aput-object p1, v4, v2

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_6
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    return-object p0

    .line 127
    :cond_7
    :goto_0
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->settings_license_activity_loading:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public onStart()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    .line 114
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public quickUpdateHeaderPreference()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    const-string v2, "plugged"

    const/4 v3, -0x1

    .line 172
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    int-to-long v0, v1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setFragment(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method public setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method

.method public setPowerSaverManager(Lcom/android/settings/fuelgauge/IPowerSaverManager;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-void
.end method

.method public updateBatteryStatus(Ljava/lang/String;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateHeaderByBatteryTips(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    :cond_0
    return-void
.end method

.method public updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryStatusFeatureProvider:Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;->triggerBatteryStatusUpdate(Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->generateLabel(Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 156
    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->formatBatteryPercentageText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryUsageProgressBarPref:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    int-to-long v0, p1

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

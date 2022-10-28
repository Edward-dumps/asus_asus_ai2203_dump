.class public Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StopDrainingAppsFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# instance fields
.field private bound:Z

.field private mBatteryDrainingStopPref:Landroidx/preference/Preference;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

.field private mDailyReportPref:Landroidx/preference/Preference;

.field private mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

.field private mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->bound:Z

    .line 47
    new-instance v0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment$1;-><init>(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->bound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method private getSwitchState()Z
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "detect_drain_apps"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getDetectDrainDailyState()Z
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->bound:Z

    const/4 v1, 0x0

    const-string v2, "StopDrainingAppsFragment"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 66
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 73
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->getDrainingDailyReport()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "getSwitchByScheduleState: "

    .line 75
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance p0, Lcom/android/settings/fuelgauge/StopDrainAppsPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/StopDrainAppsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 180
    sget p0, Lcom/android/settings/R$xml;->battery_stop_draining_apps:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 150
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 151
    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 154
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->getSwitchState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mBatteryDrainingStopPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mBatteryDrainingStopPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 175
    const-class p1, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/AsusDetectDranDailyNotiController;->setParentFragment(Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "stop_draining_apps"

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

    const-string p1, "battery_draning_report"

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportPref:Landroidx/preference/Preference;

    const-string p1, "method_closing_battery_draining_app"

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mBatteryDrainingStopPref:Landroidx/preference/Preference;

    const-string p1, "battery_draning_notifiy"

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 114
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.powersaver"

    const-string v3, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "detect_drain_apps"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    if-eqz p2, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mBatteryDrainingStopPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mStopDrainAppsPref:Landroidx/preference/SwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mDailyReportNotiPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 141
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mBatteryDrainingStopPref:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateDetectDrainDailyState(Z)Z
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->bound:Z

    const/4 v1, 0x0

    const-string v2, "StopDrainingAppsFragment"

    if-nez v0, :cond_0

    const-string p0, "Power Saver Service doesn\'t connected"

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 89
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/StopDrainingAppsFragment;->mPSManager:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/IPowerSaverManager;->setDrainingDailyReport(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "updateSwitchByScheduleState: "

    .line 91
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.class public Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SavedDualAccessPointsWifiSettings2.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SavedDualAccessPoints2"


# instance fields
.field mSavedNetworkTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SavedDualAccessPoints2"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 56
    sget p0, Lcom/android/settings/R$xml;->dual_wifi_display_saved_access_points2:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    const-class p1, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->setHost(Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;)Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    .line 68
    const-class p1, Lcom/android/settings/dualwifi/savedaccesspoints2/SubscribedDualAccessPointsPreferenceController2;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dualwifi/savedaccesspoints2/SubscribedDualAccessPointsPreferenceController2;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->setHost(Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;)Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedDualAccessPoints2{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 79
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v8, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, p0, p1}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2$1;-><init>(Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;Ljava/time/ZoneId;)V

    .line 86
    new-instance p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 87
    invoke-static {v2}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v3

    const-class v0, Landroid/net/ConnectivityManager;

    .line 88
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 89
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScoreManager;

    new-instance v6, Landroid/os/Handler;

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    move-object v0, p1

    move-object v13, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onSavedDualWifiEntriesChanged()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 146
    const-class v1, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->getSavedDualWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->displayPreference(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->onSavedDualWifiEntriesChanged()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->onSubscriptionDualWifiEntriesChanged()V

    return-void
.end method

.method public onSubscriptionDualWifiEntriesChanged()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 156
    const-class v1, Lcom/android/settings/dualwifi/savedaccesspoints2/SubscribedDualAccessPointsPreferenceController2;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/savedaccesspoints2/SubscribedDualAccessPointsPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->mSavedNetworkTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->getSubscriptionDualWifiEntries()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->displayPreference(Landroidx/preference/PreferenceScreen;Ljava/util/List;)V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    return-void
.end method

.method public showDualWifiPage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SavedDualAccessPoints2"

    const-string p1, "Not able to show DualWifiEntry of an empty key"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_chosen_wifientry_key"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class p2, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;

    .line 129
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

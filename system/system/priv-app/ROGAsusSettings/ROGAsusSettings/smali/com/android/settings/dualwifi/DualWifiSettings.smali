.class public Lcom/android/settings/dualwifi/DualWifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DualWifiSettings.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;
.implements Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;,
        Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;,
        Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAvailableConnectionsTipCategory:Landroidx/preference/PreferenceCategory;

.field private mClickedConnect:Z

.field private mConnectListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

.field private mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mConnectionStatusCategory:Landroidx/preference/PreferenceCategory;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

.field private mDialogDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mDialogDualWifiEntryKey:Ljava/lang/String;

.field private mDialogMode:I

.field private mDualConnectedWifiBSSID:Ljava/lang/String;

.field private mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

.field private mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

.field protected mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field private mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsDualWifiConnected:Z

.field private mIsDualWifiEntryListStale:Z

.field private mIsMainWifiConnected:Z

.field private mMainConnectedWifiBSSID:Ljava/lang/String;

.field private mMainWifiBandIndex:I

.field private mMainWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

.field protected mMainWifiManager:Landroid/net/wifi/WifiManager;

.field private mOpenSsid:Ljava/lang/String;

.field private mQRCodeMenuItem:Landroid/view/MenuItem;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshMenuItem:Landroid/view/MenuItem;

.field private mSaveListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

.field private mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSecondTipPreference:Lcom/android/settings/dualwifi/TipsPreference;

.field private mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateDualWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$8BaFn9TKFftKNh5NtP5LfFVgyME(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$B2dWmTLZu-Ip0GPetrgnJ__RsV0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$onDualWifiEntriesChanged$3(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Tpx37HBoLuoUU9ZWZRIyfYMVs-w(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$onDualWifiEntriesChanged$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XeaJUU2e1QOM8CwDyHdjfMKhcoA(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5S3oM_jf03aCoehigslH_PcRWc(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$updateDualWifiEntryPreferences$5(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hRDRVsCRVVCMw572yvdfDcbZdm0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$onDualWifiEntriesChanged$4(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u8USWr6JBbxBA1UP8-k82BkVkGY(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/DualWifiSettings;->lambda$updateDualWifiEntryPreferences$6(Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1052
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$5;

    sget v1, Lcom/android/settings/R$xml;->dual_wifi_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings$5;-><init>(I)V

    sput-object v0, Lcom/android/settings/dualwifi/DualWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 208
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiEntryListStale:Z

    .line 158
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mUpdateDualWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    const-string v0, ""

    .line 202
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainConnectedWifiBSSID:Ljava/lang/String;

    .line 203
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualConnectedWifiBSSID:Ljava/lang/String;

    .line 1237
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$6;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/DualWifiEnabler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsMainWifiConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setSecondTipsPreferenceSummary()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/WifiInfoPreference;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dualwifi/DualWifiSettings;->setWifiInfoPreference(Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualConnectedWifiBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiConnected:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/DualWifiSettings;->sendWifiInfoBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/WifiInfoPreference;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mClickedConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/DualWifiSettings;)Z
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/DualWifiSettings;)Z
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->launchConfigNewNetworkFragment(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/DualWifiSettings;->showDialog(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->updateLayout()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainConnectedWifiBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/settings/dualwifi/DualWifiSettings;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    return p1
.end method

.method private addPreferences()V
    .locals 3

    .line 233
    sget v0, Lcom/android/settings/R$xml;->dual_wifi_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "connection_status"

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectionStatusCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "available_connections_tip"

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mAvailableConnectionsTipCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "connected_access_point"

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "saved_dual_networks"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 240
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "current_connected_main_wifi_ap"

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/WifiInfoPreference;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    const-string v0, "current_connected_dual_wifi_ap"

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/WifiInfoPreference;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    const-string v0, "second_tips"

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/TipsPreference;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSecondTipPreference:Lcom/android/settings/dualwifi/TipsPreference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    const-string v2, ""

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->setWifiInfoPreference(Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->setWifiInfoPreference(Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 575
    invoke-static {v0, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createDualWifiEnabler()Lcom/android/settings/dualwifi/DualWifiEnabler;
    .locals 4

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 379
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiEnabler;

    new-instance v2, Lcom/android/settings/widget/MainTitleSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MainTitleSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 4

    .line 1020
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x89

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 v0, 0x0

    .line 1021
    invoke-virtual {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V

    .line 1022
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->forgetNetworkForMainWifi(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 942
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 942
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 945
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->wifi_saved_passpoint_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 947
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 945
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr p1, p2

    .line 950
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_all_access_points_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 951
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 950
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDebugEnabled()Z
    .locals 2

    .line 1234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "debug_dual_wifi_saved_network_pref"

    const/4 v1, 0x0

    .line 1233
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 2

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1137
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isDualWifiSettingsEnabled()Z
    .locals 4

    .line 1224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1229
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_settings"

    .line 1228
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    .line 154
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->updateDualWifiEntryPreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onDualWifiEntriesChanged$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onDualWifiEntriesChanged$3(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onDualWifiEntriesChanged$4(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->isDisabledByWrongPassword(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$updateDualWifiEntryPreferences$5(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 805
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSignIn()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 806
    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V

    goto :goto_0

    .line 808
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/dualwifi/DualWifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateDualWifiEntryPreferences$6(Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;)V

    return-void
.end method

.method private launchConfigNewNetworkFragment(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 3

    .line 1098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1100
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_chosen_wifientry_key"

    .line 1099
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1102
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v1, Lcom/android/settings/dualwifi/ConfigureDualWifiEntryFragment;

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1104
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x3

    .line 1106
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1107
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;)V
    .locals 4

    .line 893
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_wifi_details_datausage_header"

    .line 896
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 898
    :cond_0
    sget v1, Lcom/android/settings/R$string;->pref_title_network_details:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 900
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 901
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 903
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;

    .line 904
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 905
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private removeConnectedDualWifiEntryPreference()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 918
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeDualWifiEntryPreference()V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 923
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private sendWifiInfoBroadcast(Ljava/lang/String;I)V
    .locals 2

    .line 1313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.dualwifi.WIFI_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_ssid"

    .line 1314
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "wifi_band"

    .line 1315
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "from_settings_page"

    const/4 p2, 0x1

    .line 1316
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setOffMessage()V
    .locals 0

    .line 956
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeConnectedDualWifiEntryPreference()V

    .line 957
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeDualWifiEntryPreference()V

    return-void
.end method

.method private setQRCodeItemEnable()V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1152
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1155
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRefreshItemVisibility(Z)V
    .locals 0

    .line 1161
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mRefreshMenuItem:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    .line 1162
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setSecondTipsPreferenceSummary()V
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSecondTipPreference:Lcom/android/settings/dualwifi/TipsPreference;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsMainWifiConnected:Z

    if-eqz v1, :cond_0

    .line 1216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->dual_wifi_settings_second_tips_for_WW:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->dual_wifi_settings_no_connections_message:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1215
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSecondTipPreference:Lcom/android/settings/dualwifi/TipsPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->dual_wifi_settings_hotspot_enabled_notice:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private setWifiInfoPreference(Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V
    .locals 1

    const-string v0, ""

    .line 1304
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 1306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p3, Lcom/android/settings/R$string;->dual_wifi_settings_no_connected_ap_message:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1305
    invoke-virtual {p1, p2, p0}, Lcom/android/settings/dualwifi/WifiInfoPreference;->setWifiInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_0
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/dualwifi/WifiInfoPreference;->setWifiInfo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showDialog(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V
    .locals 2

    .line 628
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 630
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    .line 641
    :cond_1
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 642
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntryKey:Ljava/lang/String;

    .line 643
    iput p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogMode:I

    .line 645
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateDualWifiEntryPreferences()V
    .locals 9

    .line 785
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getConnectedDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    .line 793
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_3

    .line 795
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 796
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    if-eqz v3, :cond_2

    .line 797
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v3

    if-eq v3, v0, :cond_4

    .line 798
    :cond_2
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 799
    new-instance v3, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v0, p0}, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 801
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->refresh()V

    .line 803
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 804
    new-instance v5, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 812
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V

    invoke-virtual {v3, v0}, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;->setOnGearClickListener(Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;)V

    .line 816
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mClickedConnect:Z

    if-eqz v0, :cond_4

    .line 817
    iput-boolean v4, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mClickedConnect:Z

    .line 818
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 822
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectedDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 826
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 827
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getDualWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 828
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v4

    move v5, v3

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 829
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is24GHz()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is5GHz()Z

    move-result v7

    if-nez v7, :cond_7

    .line 830
    :cond_6
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is24GHz()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is6GHz()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v7, v2

    goto :goto_3

    :cond_8
    move v7, v4

    :goto_3
    if-nez v7, :cond_b

    .line 840
    iget v7, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    if-ne v7, v2, :cond_9

    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is24GHz()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_2

    .line 842
    :cond_9
    iget v7, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 843
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is5GHz()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is6GHz()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_2

    .line 845
    :cond_a
    iget v7, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    if-ne v7, v1, :cond_b

    .line 846
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is5GHz()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is6GHz()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_2

    .line 853
    :cond_b
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    if-eqz v7, :cond_d

    .line 857
    invoke-virtual {v7}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v8

    if-ne v8, v6, :cond_c

    add-int/lit8 v3, v5, 0x1

    .line 858
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setOrder(I)V

    move v5, v3

    move v3, v2

    goto :goto_2

    .line 862
    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 866
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/settings/dualwifi/DualWifiSettings;->createLongPressDualWifiEntryPreference(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    move-result-object v3

    .line 867
    invoke-virtual {v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v6, v5, 0x1

    .line 868
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 869
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->refresh()V

    .line 871
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v3, v2

    move v5, v6

    goto/16 :goto_2

    .line 873
    :cond_e
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    if-nez v3, :cond_f

    .line 876
    invoke-virtual {p0, v2}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    .line 877
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 879
    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 880
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v1, "wifi_empty_list"

    .line 881
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 885
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 886
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method private updateDualWifiEntryPreferencesDelayed()V
    .locals 3

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 773
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mUpdateDualWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 778
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    .line 779
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mUpdateDualWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private updateLayout()V
    .locals 2

    .line 1198
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->isDualWifiSettingsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectionStatusCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1200
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mAvailableConnectionsTipCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectionStatusCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mAvailableConnectionsTipCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1206
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setSecondTipsPreferenceSummary()V

    :goto_0
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 1

    .line 977
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1028
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    .line 1027
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1032
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiEntryConnectCallback;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    return-void
.end method

.method createLongPressDualWifiEntryPreference(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;
    .locals 2

    .line 912
    new-instance v0, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 966
    sget p0, Lcom/android/settings/R$string;->help_url_wifi:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualWifiSettings{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 260
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 261
    new-instance v5, Lcom/android/settings/dualwifi/DualWifiSettings$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings$1;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/time/ZoneId;)V

    .line 267
    invoke-static {v11}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDualWifiTrackerLibProvider()Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    .line 270
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 271
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x3a98

    const-wide/16 v8, 0x2710

    move-object v2, v11

    move-object v10, p0

    .line 269
    invoke-interface/range {v0 .. v10}, Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;->createDualWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    .line 281
    invoke-static {v11}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 284
    :cond_0
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 285
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;

    .line 287
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiConnectListener;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/DualWifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mConnectListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    .line 289
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$2;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSaveListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    .line 305
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$3;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mForgetListener:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    .line 320
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_key"

    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntryKey:Ljava/lang/String;

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_enable_next_on_connect"

    .line 331
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mEnableNextOnConnection:Z

    const-string/jumbo v0, "wifi_start_connect_ssid"

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 339
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getBandIndex(I)I

    move-result p1

    .line 340
    iput p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiBandIndex:I

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->onWifiStateChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_0

    .line 453
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    const-string p1, "network_config_key"

    .line 460
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_2

    .line 463
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance p3, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/DualWifiSettings$1;)V

    invoke-virtual {p2, p1, p3}, Lasus/net/vicewifi/WifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 465
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 581
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 599
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->showDialog(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    return v2

    .line 589
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    return v2

    .line 586
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    return v2

    .line 583
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->addPreferences()V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 474
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 475
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .line 532
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 533
    instance-of p3, p2, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    if-nez p3, :cond_0

    return-void

    .line 539
    :cond_0
    check-cast p2, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 542
    :try_start_0
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 543
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canConnect()Z

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 544
    sget p2, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-interface {p1, v0, p3, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 547
    :cond_1
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canDisconnect()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x3

    const/4 v1, 0x1

    .line 549
    sget v2, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    invoke-interface {p1, v0, p2, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->canForgetNetwork()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    .line 556
    sget v1, Lcom/android/settings/R$string;->forget:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 559
    :cond_3
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 565
    :cond_4
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSelectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    if-eq p0, p3, :cond_5

    const/4 p0, 0x5

    .line 567
    sget p2, Lcom/android/settings/R$string;->wifi_modify:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "menu exception, e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 657
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 654
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)Lcom/android/settings/dualwifi/DualWifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 496
    invoke-static {}, Lcom/android/settings/Utils;->isCustomizeForSG()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 497
    sget v2, Lcom/android/settings/R$string;->wifi_dpp_scan_qr_code:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->asus_settings_ic_qr_code:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 500
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    .line 501
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 502
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setQRCodeItemEnable()V

    :cond_0
    const/16 v0, 0x8

    .line 505
    sget v2, Lcom/android/settings/R$string;->menu_stats_refresh:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mRefreshMenuItem:Landroid/view/MenuItem;

    .line 506
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v2}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 507
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 509
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->teardownSwitchController()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 355
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mQRCodeMenuItem:Landroid/view/MenuItem;

    .line 358
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mRefreshMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 663
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 664
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 670
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    .line 671
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 672
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onDualWifiEntriesChanged()V
    .locals 2

    .line 726
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiEntryListStale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    iput-boolean v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiEntryListStale:Z

    .line 728
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->updateDualWifiEntryPreferences()V

    goto :goto_0

    .line 730
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->updateDualWifiEntryPreferencesDelayed()V

    .line 732
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getConnectedDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->changeNextButtonState(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getDualWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    .line 737
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda5;

    .line 738
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda6;

    .line 740
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 742
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 743
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 744
    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 745
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->launchConfigNewNetworkFragment(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    :cond_2
    return-void
.end method

.method public onForget(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 0

    .line 984
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 514
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x2

    .line 516
    invoke-static {v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 515
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 518
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 519
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1, v1}, Lasus/net/vicewifi/WifiViceManager;->startScan(Landroid/os/WorkSource;)Z

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    return v2

    .line 522
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v2

    .line 527
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 417
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 419
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 421
    invoke-direct {p0, v1, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->sendWifiInfoBroadcast(Ljava/lang/String;I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->pause()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 606
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 607
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 608
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 611
    :cond_0
    instance-of v0, p1, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    if-eqz v0, :cond_2

    .line 612
    check-cast p1, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;

    .line 613
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->shouldEditBeforeConnect()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 616
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->launchConfigNewNetworkFragment(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    return v1

    .line 620
    :cond_1
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V

    return v1

    .line 622
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 386
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 388
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->resume(Landroid/content/Context;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "asus.net.vicewifi.STATE_CHANGE"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getConnectedDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->changeNextButtonState(Z)V

    .line 403
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "change_system_mode"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$4;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 486
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 488
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialog:Lcom/android/settings/dualwifi/DualWifiDialog2;

    if-eqz v0, :cond_0

    .line 489
    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDialogDualWifiEntryKey:Ljava/lang/String;

    const-string/jumbo v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 363
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 364
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->createDualWifiEnabler()Lcom/android/settings/dualwifi/DualWifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mUpdateDualWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mIsDualWifiEntryListStale:Z

    .line 444
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 5

    .line 989
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getMode()I

    move-result v0

    .line 990
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 991
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    if-nez v1, :cond_0

    .line 995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 996
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 998
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-nez v0, :cond_4

    .line 1001
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 1003
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/settings/dualwifi/DualWifiSettings;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ZZ)V

    goto :goto_0

    .line 1006
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance v0, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dualwifi/DualWifiSettings$DualWifiConnectActionListener;-><init>(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/DualWifiSettings$1;)V

    invoke-virtual {p1, v1, v0}, Lasus/net/vicewifi/WifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 1007
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    sget p2, Lcom/android/settings/R$layout;->progress_header:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    const/4 p2, 0x0

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    .line 218
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 219
    sget p2, Lcom/android/settings/R$id;->progress_bar_animation:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintProgressBar(Landroid/widget/ProgressBar;I)V

    :cond_0
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->getWifiState()I

    move-result v0

    .line 690
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualWifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 696
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->updateDualWifiEntryPreferences()V

    .line 697
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setQRCodeItemEnable()V

    .line 698
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->setRefreshItemVisibility(Z)V

    .line 699
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 703
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeConnectedDualWifiEntryPreference()V

    .line 704
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeDualWifiEntryPreference()V

    .line 705
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setOffMessage()V

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    .line 716
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setQRCodeItemEnable()V

    .line 717
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiSettings;->setRefreshItemVisibility(Z)V

    .line 718
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiInfoPreference:Lcom/android/settings/dualwifi/WifiInfoPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 719
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mClickedConnect:Z

    goto :goto_0

    .line 709
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeConnectedDualWifiEntryPreference()V

    .line 710
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->removeDualWifiEntryPreference()V

    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getNumSavedNetworks()I

    move-result v0

    .line 929
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiPickerTracker:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getNumSavedSubscriptions()I

    move-result v1

    add-int v2, v0, v1

    if-lez v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 932
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 933
    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;

    move-result-object p0

    .line 932
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 935
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 961
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showPinnedHeader(Z)V

    return-void
.end method

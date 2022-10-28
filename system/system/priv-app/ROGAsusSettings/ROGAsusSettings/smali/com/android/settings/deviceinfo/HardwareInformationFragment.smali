.class public Lcom/android/settings/deviceinfo/HardwareInformationFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HardwareInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mHasInit:Z

.field private mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Lcom/android/settings/deviceinfo/HardwareInformationFragment$1;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHasInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method protected buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan29()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sys.inbox.aura_fwver"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vendor.inbox.aura_fwver"

    :goto_0
    const-string v1, "aero_aura_version"

    invoke-direct {p2, p1, v1, v0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "aero_mcu_version"

    const-string v1, "sys.inbox.inbox_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "aero_pd_version"

    const-string v1, "sys.inbox.pd_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "aero_uuid_version"

    const-string v1, "sys.oem.asus.inboxid"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "twinview_aura_version"

    const-string/jumbo v1, "vendor.station.aura_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "twinview_tough_panel_version"

    const-string/jumbo v1, "vendor.station.tp_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "twinview_dock_version"

    const-string/jumbo v1, "vendor.station.generation"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "twinview_usbpd_version"

    const-string/jumbo v1, "vendor.station.pd_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "twinview_dp_version"

    const-string/jumbo v1, "vendor.station.dp_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "desktop_aura_version"

    const-string/jumbo v1, "vendor.dt.aura_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "desktop_dock_version"

    const-string/jumbo v1, "vendor.dt.power_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "desktop_usbpd_version"

    const-string/jumbo v1, "vendor.dt.pd_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "desktop_hub1_version"

    const-string/jumbo v1, "vendor.dt.hub1_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "desktop_hub2_version"

    const-string/jumbo v1, "vendor.dt.hub2_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "gamepad_left_handle"

    const-string/jumbo v1, "vendor.gamepad.left_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "gamepad_holder"

    const-string/jumbo v1, "vendor.gamepad.holder_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    const-string v0, "gamepad_wireless_dongle"

    const-string/jumbo v1, "vendor.gamepad.wireless_fwver"

    invoke-direct {p2, p1, v0, v1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan29()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sys.gamepad3.left_fwver"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "vendor.gamepad3.left_fwver"

    :goto_1
    const-string v1, "gamepad2_left_handle"

    invoke-direct {p2, p1, v1, v0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan29()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sys.gamepad3.right_fwver"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "vendor.gamepad3.right_fwver"

    :goto_2
    const-string v1, "gamepad2_right_handle"

    invoke-direct {p2, p1, v1, v0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan29()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "sys.gamepad3.middle_fwver"

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "vendor.gamepad3.middle_fwver"

    :goto_3
    const-string v1, "gamepad2_charger"

    invoke-direct {p2, p1, v1, v0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;

    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan29()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sys.gamepad3.bt_fwver"

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "vendor.gamepad3.bt_fwver"

    :goto_4
    const-string v1, "gamepad2_bluetooth"

    invoke-direct {p2, p1, v1, v0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p2, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;

    invoke-direct {p2, p1}, Lcom/android/settings/deviceinfo/AsusStationBatteryVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;

    invoke-direct {p2, p1}, Lcom/android/settings/deviceinfo/AsusGamingAudioVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;

    const-string v0, "category_aero_active"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;

    const-string v0, "category_twinview_dock"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;

    const-string v0, "category_desktop_dock"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;

    const-string v0, "category_gamepad"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance p2, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;

    const-string v0, "category_gamepad2"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/AsusGamingCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 101
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected dockingRefresh()V
    .locals 4

    .line 242
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/deviceinfo/HardwareInformationFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment$2;-><init>(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HardwareInformationFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 89
    sget p0, Lcom/android/settings/R$xml;->device_info_hardware:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHasInit:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;-><init>(Lcom/android/settings/deviceinfo/HardwareInformationFragment;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->mHeadPhoneBroadcastReceiver:Lcom/android/settings/deviceinfo/HardwareInformationFragment$DockBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected tryCatchDockingRefresh()V
    .locals 0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/HardwareInformationFragment;->dockingRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# static fields
.field private static final DEBUG:Z

.field static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "available_device_list"

.field static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "connected_device_list"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ConnectedDeviceFrag"

    const/4 v1, 0x3

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DEBUG:Z

    .line 145
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->connected_devices:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$string;->help_url_connected_devices:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConnectedDeviceFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2eb

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 101
    sget p0, Lcom/android/settings/R$xml;->connected_devices:I

    return p0
.end method

.method isAlwaysDiscoverable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 137
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings"

    .line 138
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.systemui"

    .line 139
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "settings_ui"

    const-string v0, "bt_near_by_suggestion_enabled"

    const/4 v1, 0x1

    .line 114
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 119
    :goto_0
    sget-boolean v2, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttach() calling package name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ConnectedDeviceFrag"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    const-class v2, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {v2, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 125
    const-class v2, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {v2, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 126
    const-class v2, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;

    invoke-virtual {v2, p0}, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 127
    const-class v2, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 128
    const-class v2, Lcom/android/settings/slices/SlicePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/slices/SlicePreferenceController;

    if-eqz p1, :cond_2

    .line 129
    sget p1, Lcom/android/settings/R$string;->config_nearby_devices_slice_uri:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 128
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    .line 131
    const-class p1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->isAlwaysDiscoverable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->setAlwaysDiscoverable(Z)V

    return-void
.end method

.method protected refreshAllPreferences(Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->updatePreferenceCategoryIfNeed(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.class public Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AsusAdvancedSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private APPBAR_STATE:Ljava/lang/String;

.field private SWITCH_CHANGED:Ljava/lang/String;

.field private isSwitchChanged:Ljava/lang/Boolean;

.field private mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

.field private mExpand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 47
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->COLLAPSED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mExpand:Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->isSwitchChanged:Ljava/lang/Boolean;

    const-string v0, "appbar_state"

    .line 49
    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->APPBAR_STATE:Ljava/lang/String;

    const-string v0, "switch_changed"

    .line 50
    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->SWITCH_CHANGED:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mExpand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method protected buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
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

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Lcom/android/settings/asusadvancedsettings/MobileManagerPreferenceController;

    const-string v2, "mobile_manager_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/asusadvancedsettings/MobileManagerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;

    const-string v2, "game_toolbar_app_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;

    const-string v2, "twinapps_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;

    const-string v2, "toggle_safeguard"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-direct {v1, p1}, Lcom/android/settings/accelerateapps/OptiFlexController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesController;

    const-string v2, "flip_camera_features"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/flipcamera/AsusFlipCameraFeaturesController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
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

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AsusAdvanceSettingsFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->asus_advanced_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 113
    iget-object p2, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->APPBAR_STATE:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->SWITCH_CHANGED:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->isSwitchChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->COLLAPSED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    .line 117
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setDefaultExpended(Z)V

    .line 120
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->isSwitchChanged:Ljava/lang/Boolean;

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance p3, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$1;-><init>(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-object p1
.end method

.method public onOneHandModeChange(Z)V
    .locals 0

    .line 196
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->isSwitchChanged:Ljava/lang/Boolean;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;-><init>(Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mDockBroadcastReceiver:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment$DockBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->SWITCH_CHANGED:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->isSwitchChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->APPBAR_STATE:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;->mExpand:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

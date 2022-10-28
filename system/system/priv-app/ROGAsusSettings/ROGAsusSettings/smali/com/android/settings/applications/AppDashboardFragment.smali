.class public Lcom/android/settings/applications/AppDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_notifications"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAppsPreferenceController:Lcom/android/settings/applications/AppsPreferenceController;

.field private mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Lcom/android/settings/applications/AppDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/AppDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v1, Lcom/android/settings/applications/AppsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    new-instance v4, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v4}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const-string v2, "usagestats"

    .line 142
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    const-class v2, Landroid/os/UserManager;

    .line 143
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/UserManager;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;

    const-string p2, "lock_screen_notifications"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Lcom/android/settings/applications/AppDashboardFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/AppDashboardFragment$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string p2, "app_and_notif_cell_broadcast_settings"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
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

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-static {p1, v0, p0}, Lcom/android/settings/applications/AppDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public enableNAS(Landroid/content/ComponentName;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 231
    const-class v1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setNotificationAssistantGranted(Landroid/content/ComponentName;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 98
    sget p0, Lcom/android/settings/R$string;->help_url_apps_and_notifications:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x41

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 103
    sget p0, Lcom/android/settings/R$xml;->app_and_notification_v2:I

    return p0
.end method

.method protected isParalleledControllers()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 109
    const-class p1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 110
    const-class p1, Lcom/android/settings/applications/AppsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppsPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppDashboardFragment;->mAppsPreferenceController:Lcom/android/settings/applications/AppsPreferenceController;

    .line 111
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/AppsPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mAppsPreferenceController:Lcom/android/settings/applications/AppsPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 114
    const-class p1, Lcom/android/settings/applications/HibernatedAppsPreferenceController;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/HibernatedAppsPreferenceController;

    .line 116
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 118
    const-class p1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/AppDashboardFragment;->mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 121
    iget-object p0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mNotificationAssistantPreferenceController:Lcom/android/settings/notification/NotificationAssistantPreferenceController;

    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->setBackend(Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ":settings:fragment_args_key"

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "configure_notifications_advanced"

    .line 176
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    const v0, 0x7fffffff

    .line 179
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 180
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 189
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 191
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 192
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 194
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 193
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    iget-object p0, p0, Lcom/android/settings/applications/AppDashboardFragment;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/applications/AppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final KEY_ALL_APP_INFO:Ljava/lang/String; = "all_app_infos"

.field static final KEY_GENERAL_CATEGORY:Ljava/lang/String; = "general_category"

.field static final KEY_RECENT_APPS_CATEGORY:Ljava/lang/String; = "recent_apps_category"

.field static final KEY_SEE_ALL:Ljava/lang/String; = "see_all_apps"

.field public static final SHOW_RECENT_APP_COUNT:I = 0x4


# instance fields
.field mAllAppsInfoPref:Landroidx/preference/Preference;

.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field mGeneralCategory:Landroidx/preference/PreferenceCategory;

.field private mHost:Landroidx/fragment/app/Fragment;

.field private mInitialLaunch:Z

.field mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

.field mSeeAllPref:Landroidx/preference/Preference;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$fWWgEZunQxe7ZGFqyfy33XyNnSA(Lcom/android/settings/applications/AppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/AppsPreferenceController;->lambda$displayRecentApps$0(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recent_apps_category"

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mInitialLaunch:Z

    .line 87
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 87
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private displayRecentApps()V
    .locals 15

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    .line 184
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 185
    iget-object v2, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 187
    iget-object v5, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 188
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "see_all_apps"

    .line 189
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 190
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 196
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 197
    iget-object v7, p0, Lcom/android/settings/applications/AppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v8, p0, Lcom/android/settings/applications/AppsPreferenceController;->mUserId:I

    .line 198
    invoke-virtual {v7, v6, v8}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/Preference;

    if-nez v8, :cond_3

    .line 206
    new-instance v8, Lcom/android/settingslib/widget/AppPreference;

    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x0

    .line 212
    :try_start_0
    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v10, :cond_4

    .line 217
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_3

    :cond_4
    iget-object v10, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :goto_3
    check-cast v10, Ljava/lang/String;

    .line 219
    invoke-virtual {v8, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v10, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v10, v11}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v10, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-double v11, v11

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 222
    invoke-static {v10, v11, v12, v3, v5}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v4, 0x1

    .line 225
    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 226
    new-instance v4, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v6, v7}, Lcom/android/settings/applications/AppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    if-nez v9, :cond_5

    .line 234
    iget-object v4, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_5
    move v4, v5

    goto :goto_1

    .line 239
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 240
    iget-object v2, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_7
    return-void
.end method

.method private initPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "recent_apps_category"

    .line 170
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "general_category"

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "all_app_infos"

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    const-string v0, "see_all_apps"

    .line 173
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    .line 174
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private synthetic lambda$displayRecentApps$0(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 7

    .line 227
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget v1, Lcom/android/settings/R$string;->application_info_label:I

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v6

    const/16 v5, 0x3e9

    move-object v2, p1

    .line 227
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppsPreferenceController;->initPreferences(Landroidx/preference/PreferenceScreen;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->refreshUi()V

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mInitialLaunch:Z

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

.method loadAllAppsCount()V
    .locals 4

    .line 146
    new-instance v0, Lcom/android/settings/applications/AppsPreferenceController$1;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/settings/applications/AppsPreferenceController$1;-><init>(Lcom/android/settings/applications/AppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 158
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method loadRecentApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;-><init>(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RecentAppStatsMixin;->loadDisplayableRecentApps(I)V

    .line 166
    iget-object p0, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mRecentApps:Ljava/util/List;

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mInitialLaunch:Z

    return-void
.end method

.method refreshUi()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->loadAllAppsCount()V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->loadRecentApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentApps:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/settings/applications/AppsPreferenceController;->displayRecentApps()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 134
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mAllAppsInfoPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mRecentAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mGeneralCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/applications/AppsPreferenceController;->mSeeAllPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 112
    iget-boolean p1, p0, Lcom/android/settings/applications/AppsPreferenceController;->mInitialLaunch:Z

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/applications/AppsPreferenceController;->refreshUi()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

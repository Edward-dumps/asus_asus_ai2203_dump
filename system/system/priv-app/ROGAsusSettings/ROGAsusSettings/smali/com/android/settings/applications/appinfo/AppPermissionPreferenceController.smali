.class public Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final INVALID_SESSION_ID:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PermissionPrefControl"


# instance fields
.field private final mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field final mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method public static synthetic $r8$lambda$HZhz7YuQ9PDB1oS3YZLEuQG3vNU(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->lambda$new$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    new-instance p2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 97
    new-instance p2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 10

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hideInfoButton"

    const/4 v2, 0x1

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.AUTO_REVOKE_PERMISSIONS"

    const-wide/16 v6, 0x0

    .line 146
    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    cmp-long v3, v8, v6

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    cmp-long v3, v8, v6

    if-nez v3, :cond_3

    .line 152
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    .line 160
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mEnableTwinApps:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mTwinAppsId:I

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v4, v3, :cond_5

    if-eqz v1, :cond_6

    .line 162
    new-instance v3, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mTwinAppsId:I

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 167
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "PermissionPrefControl"

    const-string v0, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 171
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 122
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->startManagePermissionsActivity()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
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
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

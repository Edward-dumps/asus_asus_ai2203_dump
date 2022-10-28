.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field static final REQUEST_UNINSTALL:I = 0x0

.field static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field static final UNINSTALL_UPDATES:I = 0x2


# instance fields
.field private mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mEnableTwinApps:Z

.field mFinishing:Z

.field private mInitialized:Z

.field private mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

.field private mListeningToPackageRemove:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected mTwinAppsId:I

.field private mUid:I

.field private mUpdatedSysApp:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mEnableTwinApps:Z

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mTwinAppsId:I

    .line 738
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 597
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package"

    .line 598
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    .line 601
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_1
    if-eqz v0, :cond_3

    .line 603
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    .line 606
    :cond_3
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private getUid()I
    .locals 3

    .line 610
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUid:I

    if-lez v0, :cond_0

    return v0

    .line 613
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string v2, "uid"

    .line 614
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUid:I

    if-gtz v2, :cond_4

    if-nez v0, :cond_2

    .line 617
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_1
    if-eqz v0, :cond_3

    .line 618
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "uId"

    .line 619
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUid:I

    :cond_3
    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUid:I

    .line 621
    :cond_4
    iget p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUid:I

    return p0
.end method

.method private onPackageRemoved()V
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 569
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 1

    .line 675
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "chg"

    .line 676
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    const/4 v0, -0x1

    .line 678
    invoke-virtual {p2, v0, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 679
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/os/Bundle;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 554
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 556
    :cond_0
    iget-object v0, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object p4, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v0, "uid"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    new-instance p4, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 559
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 560
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x1

    .line 562
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 563
    invoke-interface {p3}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 1

    .line 731
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 734
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 735
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3

    .line 540
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 542
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 543
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {p3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 544
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 546
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/util/Pair;

    const/16 v2, 0x368

    .line 545
    invoke-virtual {p1, p2, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 547
    invoke-virtual {p0, p3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method addToCallbackList(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 312
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    .line 317
    new-instance v0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;

    invoke-direct {v0, p1, p0, v8, v10}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 321
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-direct {v0, p1, p0, v8, v10}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    .line 328
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v11, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v0, v11

    move-object v2, p0

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v11, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 332
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v6, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    .line 334
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getUid()I

    move-result v4

    move-object v0, v6

    move-object v1, p1

    move-object v3, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 333
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {v0, p1, p0, v10}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance p0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance p0, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance p0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance p0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method ensureDisplayableModule(Landroid/app/Activity;)Z
    .locals 2

    .line 397
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->isHiddenSystemModule(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 398
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package is hidden module, exiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppInfoDashboard"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method ensurePackageInfoAvailable(Landroid/app/Activity;)Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 381
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    const-string p0, "AppInfoDashboard"

    const-string v0, "Package info not available. Is this package already uninstalled?"

    .line 382
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppInfoDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 580
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 582
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppInfoDashboard"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 287
    sget p0, Lcom/android/settings/R$xml;->app_info_settings:I

    return p0
.end method

.method getUserId()I
    .locals 5

    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mEnableTwinApps:Z

    if-eqz v0, :cond_6

    .line 762
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mTwinAppsId:I

    .line 764
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mTwinAppsId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 765
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "uid"

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-ne v3, v1, :cond_4

    if-nez v0, :cond_3

    .line 769
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_1
    if-eqz v0, :cond_4

    .line 771
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 772
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 775
    :cond_4
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mTwinAppsId:I

    if-eq v0, p0, :cond_5

    if-ne v3, p0, :cond_6

    :cond_5
    return p0

    .line 780
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public handleDialogClick(I)V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 451
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 454
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 456
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_1

    .line 457
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 8

    .line 153
    const-class v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 155
    const-class v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    .line 157
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, p0}, Lcom/android/settings/core/LiveDataController;->initLifeCycleOwner(Landroidx/fragment/app/Fragment;)V

    .line 160
    const-class v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 161
    const-class v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 163
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 165
    const-class v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 166
    const-class v1, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 168
    const-class v1, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    .line 169
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    move-result-object v1

    .line 170
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 174
    const-class v0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    .line 175
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 177
    const-class v0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 178
    const-class v0, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 179
    const-class v0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 180
    const-class v0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/ExtraAppInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 182
    const-class v0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;

    .line 184
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 185
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/HibernationSwitchPreferenceController;->setPackage(Ljava/lang/String;)V

    .line 186
    const-class v1, Lcom/android/settings/applications/appinfo/AppHibernationPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppHibernationPreferenceCategoryController;

    new-array v2, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v0, v2, v5

    .line 187
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 189
    const-class v0, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 191
    invoke-virtual {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 193
    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 195
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 197
    const-class v2, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;

    .line 199
    invoke-virtual {v2, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 202
    const-class v4, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 203
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 204
    invoke-virtual {v4, p1}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 207
    const-class v6, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetailsPreferenceController;

    .line 208
    invoke-virtual {p0, v6}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetailsPreferenceController;

    .line 209
    invoke-virtual {v6, p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetailsPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 212
    const-class v7, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetailPreferenceController;

    .line 213
    invoke-virtual {p0, v7}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetailPreferenceController;

    .line 214
    invoke-virtual {v7, p1}, Lcom/android/settings/applications/appinfo/AlarmsAndRemindersDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7, p0}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 217
    const-class p1, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    const/4 p1, 0x6

    new-array p1, p1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v0, p1, v5

    aput-object v1, p1, v3

    const/4 v0, 0x2

    aput-object v2, p1, v0

    const/4 v0, 0x3

    aput-object v4, p1, v0

    const/4 v0, 0x4

    aput-object v6, p1, v0

    const/4 v0, 0x5

    aput-object v7, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    .line 227
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "user"

    .line 228
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensureDisplayableModule(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    const/4 p1, 0x1

    .line 238
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mEnableTwinApps:Z

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mTwinAppsId:I

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 408
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 409
    sget p0, Lcom/android/settings/R$string;->app_factory_reset:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 410
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 411
    sget p0, Lcom/android/settings/R$string;->uninstall_all_users_text:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 412
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "action_buttons"

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setRoundCorner(Z)V

    .line 257
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    .line 263
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 438
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 446
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v2

    .line 440
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v2
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 715
    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AppInfoDashboard"

    const-string p1, "Package change irrelevant, skipping"

    .line 366
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 302
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 417
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    .line 421
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    const/4 v1, 0x2

    .line 423
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$bool;->config_disable_uninstall_update:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 426
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p1, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 273
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 275
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    const-string v2, "no_control_apps"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 277
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method refreshUi()Z
    .locals 7

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    return v1

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    .line 507
    invoke-interface {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;->refreshUi()V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    .line 513
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    const/high16 v2, 0x800000

    const/4 v3, 0x1

    if-nez v0, :cond_5

    .line 515
    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    .line 516
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    goto :goto_1

    .line 521
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0x400200

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getUserId()I

    move-result v6

    .line 521
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 525
    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    if-nez p0, :cond_7

    .line 529
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v2

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v3

    :catch_0
    return v1
.end method

.method retrieveAppEntry()V
    .locals 5

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 627
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_1

    .line 631
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 632
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    .line 637
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const-string v2, "AppInfoDashboard"

    if-eqz v1, :cond_3

    .line 641
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mEnableTwinApps:Z

    const v3, 0x401240

    if-eqz v1, :cond_2

    .line 643
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 649
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 644
    invoke-interface {v0, v4, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 657
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, "Missing AppEntry; maybe reinstalling?"

    .line 668
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :cond_4
    :goto_0
    return-void
.end method

.method shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    .line 471
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 479
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_6

    goto :goto_0

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v3, :cond_7

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_0

    .line 486
    :cond_7
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return v1
.end method

.method startListeningToPackageRemove()V
    .locals 2

    .line 721
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    .line 725
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 726
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

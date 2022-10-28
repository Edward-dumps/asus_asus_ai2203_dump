.class public Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccelerateAppsPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsResumed:Z

.field private mLoadingViewController:Landroid/view/View;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPkgResolveInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

.field private mPrefCategoryNonAccel:Landroidx/preference/PreferenceCategory;

.field private mPrefOptiflexTitle:Landroidx/preference/Preference;

.field private mPrefOverTenSelect:Landroidx/preference/Preference;

.field private mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

.field private mSwitchPrefEnable:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 562
    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$7;

    invoke-direct {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$7;-><init>()V

    sput-object v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPkgResolveInfo:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mIsResumed:Z

    .line 89
    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$1;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$6;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mLoadingViewController:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Lcom/android/settings/accelerateapps/AccelerateAppsController;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addToPreferenceCategory(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/util/ArrayMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPkgResolveInfo:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->loadPref()V

    return-void
.end method

.method private addAppSwitchPreference(Landroid/content/pm/ResolveInfo;Z)V
    .locals 2

    .line 269
    new-instance v0, Lcom/android/settingslib/widget/AppSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 273
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addToPreferenceCategory(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 274
    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 275
    new-instance p1, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$2;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private addToPreferenceCategory(Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 1

    .line 307
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 308
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryNonAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 309
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryNonAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 313
    :cond_1
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 314
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 316
    :cond_2
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryNonAccel:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private loadPref()V
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getSelectedAccelerateApps()Ljava/util/List;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getAcceleratableApps()Ljava/util/List;

    move-result-object v1

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 421
    invoke-direct {p0, v3, v4}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addAppSwitchPreference(Landroid/content/pm/ResolveInfo;Z)V

    .line 422
    iget-object v4, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPkgResolveInfo:Landroid/util/ArrayMap;

    invoke-static {v3}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 426
    invoke-direct {p0, v3, v5}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addAppSwitchPreference(Landroid/content/pm/ResolveInfo;Z)V

    .line 427
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPkgResolveInfo:Landroid/util/ArrayMap;

    invoke-static {v3}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 431
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 436
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 438
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 439
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 441
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 444
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 445
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 447
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 448
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 450
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->addToPreferenceCategory(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    const-string v2, "pref_optiflex_select_over_a_num"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_5

    .line 452
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 463
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optiflex"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_8

    move v0, v5

    goto :goto_4

    :cond_8
    move v0, v4

    .line 464
    :goto_4
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "optiflex_auto_selected"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_9

    move v4, v5

    .line 465
    :cond_9
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefEnable:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefEnable:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$4;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$5;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccelerateAppsPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 324
    sget p0, Lcom/android/settings/R$xml;->asus_optiflex_setting:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 389
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 390
    iput-boolean p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mIsResumed:Z

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 396
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_optiflex_enable_title"

    .line 397
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOptiflexTitle:Landroidx/preference/Preference;

    .line 398
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->optiflex_enable_description:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOptiflexTitle:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "pref_optiflex_category_accelerated"

    .line 402
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    const-string v1, "pref_optiflex_category_nonaccelerated"

    .line 403
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryNonAccel:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_optiflex_enable_switch"

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefEnable:Landroidx/preference/SwitchPreference;

    const-string v0, "pref_optiflex_auto_mode_switch"

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mSwitchPrefAuto:Landroidx/preference/SwitchPreference;

    const-string v0, "pref_optiflex_select_over_a_num"

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    .line 407
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->select_over_a_num:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefCategoryAccel:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPrefOverTenSelect:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 410
    invoke-static {}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getInstance()Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    .line 411
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->loadSharePreference(Landroid/content/Context;)V

    .line 412
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->updateAcceleratableList(Landroid/content/pm/PackageManager;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 381
    sget v0, Lcom/android/settings/R$layout;->loading_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 382
    sget v1, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mLoadingViewController:Landroid/view/View;

    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 552
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 553
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 555
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 537
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 539
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->saveSharePreference(Landroid/content/Context;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->isSafelySizeForBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->broadcastToAccelerate(Landroid/content/Context;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->saveSelectedApps(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 523
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 525
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "optiflex_controller"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 526
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexAutoEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getOptiFlexEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-virtual {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->isSafelySizeForBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->broadcastToAccelerate(Landroid/content/Context;)V

    .line 532
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mIsResumed:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 339
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContentView:Landroid/view/View;

    .line 341
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mLoadingViewController:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->mContentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    new-instance p1, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;

    invoke-direct {p1, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$3;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V

    new-array p0, p2, [Ljava/lang/Void;

    .line 376
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

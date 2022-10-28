.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;
    }
.end annotation


# static fields
.field static final USE_FAKE_DATA:Z = false

.field static sConfig:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListGroup:Landroidx/preference/PreferenceGroup;

.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$McSNeHtIFvZiTwMOjV36HQDq0M0(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/UidBatteryConsumer;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->lambda$getCoalescedUsageList$0(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->sConfig:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 147
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string p2, "user"

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 151
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 152
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method private addNotAvailableMessage()V
    .locals 3

    const-string v0, "not_available"

    .line 564
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 566
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 567
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 568
    sget v0, Lcom/android/settings/R$string;->power_usage_not_available:I

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 569
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 570
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 457
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 458
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 460
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 461
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCachedCount()I
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCoalescedUsageList(ZZ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 325
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 329
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 333
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 336
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 337
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/os/UidBatteryConsumer;

    .line 338
    invoke-direct {v0, v12}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result v7

    .line 340
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 341
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8, v12, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8, v12, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 353
    new-instance v14, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    const/16 v16, 0x0

    move-object v8, v14

    move-object v5, v14

    move v14, v7

    move/from16 v17, p2

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 358
    invoke-virtual {v5, v12}, Lcom/android/settings/fuelgauge/BatteryEntry;->add(Landroid/os/BatteryConsumer;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 362
    :cond_3
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v3

    .line 364
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v5

    move v15, v4

    :goto_2
    const/16 v6, 0x12

    if-ge v15, v6, :cond_5

    if-nez p1, :cond_4

    .line 369
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 370
    invoke-virtual {v6, v3, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideDevicePowerComponent(Landroid/os/BatteryConsumer;I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 374
    :cond_4
    new-instance v13, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v7, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v3, v15}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v9

    .line 376
    invoke-virtual {v5, v15}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v11

    .line 377
    invoke-virtual {v3, v15}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v16

    move-object v6, v13

    move v8, v15

    move-object v4, v13

    move-wide/from16 v13, v16

    invoke-direct/range {v6 .. v14}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;IDDJ)V

    .line 374
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x3e8

    move v14, v4

    .line 382
    :goto_4
    invoke-virtual {v3}, Landroid/os/BatteryConsumer;->getCustomPowerComponentCount()I

    move-result v6

    add-int/2addr v6, v4

    if-ge v14, v6, :cond_7

    if-nez p1, :cond_6

    goto :goto_5

    .line 388
    :cond_6
    new-instance v15, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v7, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {v3, v14}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    invoke-virtual {v3, v14}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v10

    .line 391
    invoke-virtual {v5, v14}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v12

    move-object v6, v15

    move v8, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;ILjava/lang/String;DD)V

    .line 388
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 395
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 396
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 397
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_8

    .line 398
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/os/UserBatteryConsumer;

    .line 399
    new-instance v6, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    move/from16 v16, p2

    invoke-direct/range {v7 .. v16}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 405
    :cond_8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v0, :cond_9

    .line 408
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 412
    :cond_9
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v2
.end method

.method private getDischargePercentage(Landroid/os/BatteryUsageStats;)I
    .locals 0

    .line 309
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getRealUid(Landroid/os/UidBatteryConsumer;)I
    .locals 1

    .line 417
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p0

    .line 421
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 423
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    .line 422
    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 427
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediaserver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    return p0
.end method

.method private static isSharedGid(I)Z
    .locals 0

    .line 482
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 486
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getCoalescedUsageList$0(Landroid/os/UidBatteryConsumer;)I
    .locals 1

    .line 334
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 553
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 555
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private shouldShowSummary(Lcom/android/settings/fuelgauge/BatteryEntry;)Z
    .locals 4

    .line 469
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->allowlist_hide_summary_in_battery_usage:I

    .line 470
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 471
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p1

    .line 473
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 474
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 171
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 172
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    .line 173
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->power_usage_list_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 188
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "others"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 193
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 195
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result v3

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 194
    :goto_0
    invoke-static {v2, p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Z)V

    return v5

    :cond_2
    return v1
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 164
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 158
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public refreshAppListGroup(Landroid/os/BatteryUsageStats;Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 209
    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 210
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->power_usage_list_summary:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 214
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 215
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 217
    sget-object v2, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->sConfig:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;

    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$Config;->shouldShowBatteryAttributionList(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v2

    const/4 v10, 0x1

    move/from16 v4, p2

    .line 220
    invoke-direct {v0, v4, v10}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCoalescedUsageList(ZZ)Ljava/util/List;

    move-result-object v11

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v12

    const-wide/16 v4, 0x0

    .line 223
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v9, v3

    move/from16 v16, v9

    move-wide v14, v4

    :goto_0
    const-wide v17, 0x3fb999999999999aL    # 0.1

    if-ge v9, v1, :cond_5

    .line 225
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 227
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 228
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v5

    move-object v10, v7

    move-wide v7, v12

    move/from16 v19, v9

    move v9, v2

    .line 227
    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v4

    cmpg-double v6, v4, v17

    if-gez v6, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    iget v6, v10, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    sget v7, Lcom/android/settings/R$drawable;->ic_wakelock:I

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v14, v6

    .line 240
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 241
    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 243
    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 244
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 243
    invoke-virtual {v8, v9, v6}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 246
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v9, :cond_3

    .line 249
    new-instance v9, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v9, v3, v7, v6, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 251
    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 253
    :cond_3
    iput-wide v4, v10, Lcom/android/settings/fuelgauge/BatteryEntry;->percent:D

    .line 254
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v19, 0x1

    .line 255
    invoke-virtual {v9, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 256
    invoke-virtual {v9, v4, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    const/4 v3, 0x0

    .line 257
    invoke-virtual {v9, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 258
    invoke-virtual {v0, v9, v10}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->setUsageSummary(Landroidx/preference/Preference;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 260
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 261
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedCount()I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0xc9

    if-le v4, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    :goto_1
    add-int/lit8 v9, v19, 0x1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_5
    move/from16 v3, v16

    :goto_2
    sub-double v5, v12, v14

    .line 267
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-wide v7, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v4

    cmpl-double v2, v4, v17

    if-ltz v2, :cond_6

    .line 270
    new-instance v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;)V

    const-string v6, "others"

    .line 271
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v6, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->battery_app_list_others:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 274
    invoke-virtual {v2, v4, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 275
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_6
    if-nez v3, :cond_7

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 281
    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 283
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    return-void
.end method

.method setUsageSummary(Landroidx/preference/Preference;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 4

    .line 440
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 445
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldShowSummary(Lcom/android/settings/fuelgauge/BatteryEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v2

    if-nez v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v0, v0

    const/4 v3, 0x0

    .line 447
    invoke-static {v2, v0, v1, v3, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 449
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->isHidden()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->battery_used_for:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v0, p2, v3

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

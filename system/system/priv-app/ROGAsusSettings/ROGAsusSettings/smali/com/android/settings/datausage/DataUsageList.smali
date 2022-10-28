.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# static fields
.field static final LOADER_CHART_DATA:I = 0x2

.field static final LOADER_SUMMARY:I = 0x3


# instance fields
.field private mApps:Landroidx/preference/PreferenceGroup;

.field private mBillingMenuItem:Landroid/view/MenuItem;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mCycleSpinner:Landroid/widget/Spinner;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mGear:Landroid/widget/ImageView;

.field private mHeader:Landroid/view/View;

.field mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field final mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkType:I

.field mSubId:I

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$QKkfp4bGf-obWVpXdrxRVfyZhJs(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 613
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 648
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 674
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/app/usage/NetworkStats;[I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    return-object p0
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/app/usage/NetworkStats$Bucket;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .line 600
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v0

    .line 601
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    if-nez v1, :cond_0

    .line 603
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 604
    iput p3, v1, Lcom/android/settingslib/AppItem;->category:I

    .line 605
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget p0, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 609
    iget-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/AppItem;->total:J

    .line 610
    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private bindStats(Landroid/app/usage/NetworkStats;[I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "DataUsageList"

    .line 433
    iget-object v0, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-nez v2, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    .line 446
    invoke-virtual {v14}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v15

    .line 447
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v11, 0x1

    :try_start_0
    const-string v5, "com.asus.asusincallui"

    .line 453
    invoke-virtual {v0, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get dialer getApplicationInfo failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    .line 460
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 462
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v9

    .line 465
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 466
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    const/16 v8, -0x1105

    const/4 v6, -0x4

    const/16 v21, 0x2

    if-eqz v7, :cond_5

    .line 467
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v5, v13, :cond_2

    .line 470
    invoke-static {v5}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v5

    if-eq v5, v8, :cond_1

    const/16 v20, 0x0

    move-object v6, v10

    move-object v7, v0

    move v2, v8

    move/from16 v8, v20

    move v2, v9

    move-object v9, v12

    move-object/from16 v22, v10

    move/from16 v23, v13

    move v13, v11

    move-wide/from16 v10, v18

    .line 472
    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v18

    goto :goto_3

    :cond_1
    move v2, v9

    move-object/from16 v22, v10

    move/from16 v23, v13

    move v13, v11

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filter -4357 twin app user, managedKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move v2, v9

    move-object/from16 v22, v10

    move/from16 v23, v13

    move v13, v11

    goto :goto_3

    :cond_3
    move-object/from16 v22, v10

    move/from16 v23, v13

    move v13, v11

    .line 483
    invoke-virtual {v14, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_4

    move/from16 v20, v21

    goto :goto_2

    .line 489
    :cond_4
    invoke-static {v5}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v6

    const/16 v20, 0x0

    :goto_2
    move v5, v6

    move-wide/from16 v10, v18

    move/from16 v8, v20

    goto :goto_4

    :cond_5
    move v2, v9

    move-object/from16 v22, v10

    move/from16 v23, v13

    move v13, v11

    if-eq v2, v6, :cond_7

    const/4 v5, -0x5

    if-eq v2, v5, :cond_7

    const/16 v5, 0x425

    if-ne v2, v5, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x3e8

    :cond_7
    :goto_3
    move v5, v2

    move-wide/from16 v10, v18

    move/from16 v8, v21

    :goto_4
    const/16 v2, -0x1105

    if-eq v5, v2, :cond_8

    move-object/from16 v6, v22

    move-object v7, v0

    move-object v9, v12

    .line 502
    invoke-static/range {v5 .. v11}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v5

    move-wide/from16 v18, v5

    goto :goto_5

    .line 504
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter -4357 twin app user, collapseKey = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", category="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v10

    :goto_5
    move-object/from16 v2, p1

    move v11, v13

    move-object/from16 v10, v22

    move/from16 v13, v23

    goto/16 :goto_1

    :cond_9
    move-object/from16 v22, v10

    move v13, v11

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 509
    array-length v0, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_c

    .line 511
    aget v5, v3, v2

    .line 513
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    move-object/from16 v6, v22

    goto :goto_7

    :cond_a
    move-object/from16 v6, v22

    .line 517
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/AppItem;

    if-nez v7, :cond_b

    .line 519
    new-instance v7, Lcom/android/settingslib/AppItem;

    invoke-direct {v7, v5}, Lcom/android/settingslib/AppItem;-><init>(I)V

    const-wide/16 v8, -0x1

    .line 520
    iput-wide v8, v7, Lcom/android/settingslib/AppItem;->total:J

    .line 521
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    iget v5, v7, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    :cond_b
    iput-boolean v13, v7, Lcom/android/settingslib/AppItem;->restricted:Z

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v6

    goto :goto_6

    .line 527
    :cond_c
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 528
    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    cmp-long v0, v18, v16

    if-eqz v0, :cond_d

    .line 529
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    iget-wide v5, v0, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    div-long v5, v5, v18

    long-to-int v0, v5

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    const/4 v3, 0x0

    .line 533
    :try_start_1
    new-instance v5, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 534
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/AppItem;

    iget-object v8, v1, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    goto :goto_a

    :catch_1
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :goto_a
    if-nez v3, :cond_e

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindStats(): AppDataUsagePreference is null!, index = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 543
    :cond_e
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 552
    iget-object v0, v1, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    return-void
.end method

.method private buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;
    .locals 1

    .line 357
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "template"

    .line 358
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "app"

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "fields"

    const/16 v0, 0xa

    .line 360
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 2

    .line 180
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->billing_cycle:I

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateBody()V
    .locals 5

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 340
    sget v1, Lcom/android/settings/R$color;->sim_noitification:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 341
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 342
    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 343
    invoke-virtual {v0, v2}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v1

    :cond_1
    const/16 v0, 0x7f

    .line 350
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 351
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 350
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 352
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method private updateDetailData()V
    .locals 5

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkStatsDetailCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 423
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData;->getTotalUsage()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 425
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->data_used_template:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageList"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x155

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 294
    sget p0, Lcom/android/settings/R$xml;->data_usage_list:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "DataUsageList"

    const-string v0, "No bandwidth control; leaving"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const-string v0, "usage_amount"

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroidx/preference/Preference;

    const-string v0, "chart_data"

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const-string v0, "apps_group"

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroidx/preference/PreferenceGroup;

    const-string v0, "operator_warning"

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->processArgument()V

    .line 167
    new-instance v0, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 266
    sget v0, Lcom/android/settings/R$menu;->data_list:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    sget p2, Lcom/android/settings/R$id;->vzw_data_usage_menu_display_unit:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    const-string p2, "DataUsageList"

    const-string v0, "onCreateOptionsMenu(): Remove display unit menu item"

    .line 268
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onCreateOptionsMenu(): assign the mBillingMenuItem"

    .line 271
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget p2, Lcom/android/settings/R$id;->billing_cycle_menu:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mBillingMenuItem:Landroid/view/MenuItem;

    .line 273
    new-instance p2, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 260
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 234
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 240
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 241
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->buildArgs(Landroid/net/NetworkTemplate;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkCycleDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    .line 240
    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 243
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 172
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 174
    sget p1, Lcom/android/settings/R$layout;->apps_filter_spinner:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 176
    sget p2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mGear:Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/DataUsageList$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/DataUsageList$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->filter_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 191
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 212
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance p2, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 223
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 225
    invoke-virtual {p1}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->loadThemeColorCodeFromProvider(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method processArgument()V
    .locals 5

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "network_template"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string v3, "sub_id"

    .line 305
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 306
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v3, 0x0

    const-string v4, "network_type"

    .line 307
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->mNetworkType:I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    if-ne v0, v2, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.provider.extra.SUB_ID"

    .line 311
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    :cond_1
    return-void
.end method

.method startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 6

    const-string v0, "selected_cycle"

    .line 558
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_item"

    .line 559
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 562
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    .line 563
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/NetworkCycleChartData;

    .line 564
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycles:Ljava/util/ArrayList;

    const-string v2, "network_cycles"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 573
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 574
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v2

    .line 573
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-wide/16 v2, 0x0

    .line 576
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 577
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    :goto_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    .line 582
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    .line 583
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 584
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method updatePolicy()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->filter_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 373
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    const-string v3, "DataUsageList"

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 377
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    check-cast v1, Landroid/widget/ImageView;

    const v0, 0x106000b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBillingMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const-string v0, "updatePolicy(): set mBillingMenuItem visible to true"

    .line 382
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBillingMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 389
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBillingMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    const-string v0, "updatePolicy(): set mBillingMenuItem visible to false"

    .line 393
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBillingMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleData:Ljava/util/List;

    if-nez v1, :cond_2

    goto :goto_1

    .line 406
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    :cond_3
    :goto_1
    return-void
.end method

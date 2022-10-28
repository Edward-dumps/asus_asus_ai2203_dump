.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.source "SavedNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mPasspointDualWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedDualWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStandardDualWifiEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionDualWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3D9nDrxV6GJVrs94euiuuk-7LY0(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->lambda$updateStandardDualWifiEntryConfigs$2(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aOj4LLIv29Wz-AG3fV2ILj0ixcw(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->lambda$updateStandardDualWifiEntryScans$0(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsesVFZCnHcdvqDR8F5zvvOiuCE(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->lambda$updateStandardDualWifiEntryConfigs$1(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V
    .locals 16

    move-object/from16 v15, p0

    const-string v14, "SavedNetworkTracker"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 78
    invoke-direct/range {v0 .. v14}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    move-object/from16 v0, p13

    .line 81
    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateStandardDualWifiEntryScans(Ljava/util/List;)V

    return-void

    .line 242
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v2}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateStandardDualWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryConfigs$1(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryConfigs$2(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 1

    .line 266
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryScans$0(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 195
    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private notifyOnSavedDualWifiEntriesChanged()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    if-eqz v0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnSubscriptionDualWifiEntriesChanged()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    if-eqz v0, :cond_0

    .line 326
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateSavedDualWifiEntries()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 164
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SavedNetworkTracker"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated SavedDualWifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    .line 166
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->notifyOnSavedDualWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 168
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateStandardDualWifiEntryConfigs(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 256
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda5;

    .line 260
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda3;

    .line 261
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 264
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    .line 273
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    new-instance v11, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 274
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v9, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Ljava/util/List;Ljava/util/List;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 273
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateStandardDualWifiEntryScans(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 186
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;

    .line 190
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 193
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSubscriptionDualWifiEntries()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 175
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SavedNetworkTracker"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated SubscriptionDualWifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    .line 179
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->notifyOnSubscriptionDualWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getSavedDualWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSavedDualWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSubscriptionDualWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mSubscriptionDualWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 141
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateStandardDualWifiEntryConfigs(Ljava/util/List;)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSavedDualWifiEntries()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSubscriptionDualWifiEntries()V

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 152
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->onScoreCacheUpdated()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    .line 155
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->onScoreCacheUpdated()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected handleOnStart()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateStandardDualWifiEntryConfigs(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->conditionallyUpdateScanResults(Z)V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSavedDualWifiEntries()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSubscriptionDualWifiEntries()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 131
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->conditionallyUpdateScanResults(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSavedDualWifiEntries()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSubscriptionDualWifiEntries()V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->conditionallyUpdateScanResults(Z)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSavedDualWifiEntries()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->updateSubscriptionDualWifiEntries()V

    return-void
.end method

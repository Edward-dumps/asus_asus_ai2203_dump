.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.source "DualWifiPickerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;
    }
.end annotation


# instance fields
.field private mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private final mDualWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;

.field private final mLock:Ljava/lang/Object;

.field private mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

.field private mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

.field private mNumSavedNetworks:I

.field private final mOsuDualWifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasspointConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mPasspointWifiConfigCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration;",
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

.field private final mStandardWifiConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSuggestedConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSuggestedDualWifiEntryCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7iXhDiiC2cKOQbq5B_AchSV4Q28(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9tWIsOft5euQGaYHQxSFCObp8vE(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateWifiConfigurations$16(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AMTb9nzUII3QKBXmxwWrv9NQ7UU(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateSuggestedDualWifiEntryScans$13(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EhnCmbf6JeFPqHh65z64pex3PzU(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$4(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FpDmoYuXLgFui43In9vr-lc6vKo(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ISuuhDqIHAagkrKykcmGG9Swjts(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$conditionallyCreateConnectedStandardDualWifiEntry$21(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LfuoCCm8l4ZkRroK1qwZcoRbNTQ(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateWifiConfigurations$18(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PsSjbHwlPGTQUCSfW5bwL0XMHL8(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateWifiConfigurations$17(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9MSDVbV_hCqY3qdsq5uDL19K6E(Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$7(Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VftEwqE6a1QzhuMz9EsO8hvZ7eM(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XxwhmD5EnjWdp9gXphF_f2HOKiA(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateStandardDualWifiEntryScans$9(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ckMNbXZs7spkrgqe1LIq3HNxO_k(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateNetworkRequestEntryScans$14(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dfaLn1jPhEIlGPWm-LCVloaoVfo(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$3(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lSv7dFZhbev0UdPALNrgMK3H38w(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$6(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lfIj70Tu-7WTMVZ48xRcov1JPSs(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateWifiConfigurations$15(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p2l-TmUab9--FS1JYoLwKWCS8iI(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateStandardDualWifiEntryScans$10(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rTtHqmccNe8A7P4zwEulwWGrm3I(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateStandardDualWifiEntryScans$11(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t7WmzfMPMZwLOJT2fuGaMdc8yBc(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$5(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w7H5FCv25b0pZZDX8GpW-vEGDLo(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateSuggestedDualWifiEntryScans$12(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ywFYZbz_SNRIAxFYGJpZx0oHZhc(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$conditionallyCreateConnectedStandardDualWifiEntry$22(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zYC1U44wco_x-vehAU7PBoQ-0Bk(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->lambda$updateDualWifiEntries$8(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)V
    .locals 16

    move-object/from16 v15, p0

    const-string v14, "DualWifiPickerTracker"

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

    .line 134
    invoke-direct/range {v0 .. v14}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mOsuDualWifiEntryCache:Ljava/util/Map;

    move-object/from16 v0, p13

    .line 137
    iput-object v0, v15, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;

    return-void
.end method

.method private conditionallyCreateConnectedPasspointDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 12

    .line 863
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_1

    return-void

    .line 871
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 876
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 877
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v8, :cond_3

    .line 880
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    iget-object v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v10, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    goto :goto_0

    .line 885
    :cond_3
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 889
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 890
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private conditionallyCreateConnectedStandardDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 12

    .line 789
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 793
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 796
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda7;

    .line 797
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda10;-><init>(I)V

    .line 798
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 799
    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 802
    :cond_1
    new-instance v6, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    const/4 v0, 0x0

    .line 803
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 804
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 805
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 809
    :cond_3
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v10, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Ljava/util/List;Ljava/util/List;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 812
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 813
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private conditionallyCreateConnectedSuggestedDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 12

    .line 828
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 832
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 833
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 834
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v3, v0, :cond_2

    goto :goto_0

    .line 837
    :cond_2
    new-instance v6, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    .line 838
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 839
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 840
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 844
    :cond_4
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v10, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Ljava/util/List;Ljava/util/List;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 847
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 848
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateStandardDualWifiEntryScans(Ljava/util/List;)V

    .line 628
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateSuggestedDualWifiEntryScans(Ljava/util/List;)V

    .line 629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updatePasspointDualWifiEntryScans(Ljava/util/List;)V

    .line 630
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateOsuDualWifiEntryScans(Ljava/util/List;)V

    .line 631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 632
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateContextualDualWifiEntryScans(Ljava/util/List;)V

    return-void

    .line 636
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 639
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v2}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    goto :goto_0

    .line 643
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 646
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    .line 647
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateStandardDualWifiEntryScans(Ljava/util/List;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateSuggestedDualWifiEntryScans(Ljava/util/List;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updatePasspointDualWifiEntryScans(Ljava/util/List;)V

    .line 650
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateOsuDualWifiEntryScans(Ljava/util/List;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateContextualDualWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$conditionallyCreateConnectedStandardDualWifiEntry$21(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 797
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$conditionallyCreateConnectedStandardDualWifiEntry$22(ILjava/lang/Integer;)Z
    .locals 0

    .line 798
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$updateDualWifiEntries$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 2

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$updateDualWifiEntries$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$updateDualWifiEntries$3(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 1

    .line 357
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isUserShareable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$4(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;
    .locals 0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$5(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isUserShareable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$6(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z
    .locals 0

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$7(Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;)Z
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->isAlreadyProvisioned()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDualWifiEntries$8(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z
    .locals 0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateNetworkRequestEntryScans$14(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 615
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    invoke-direct {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryScans$10(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 1

    .line 446
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    .line 447
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryScans$11(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateStandardDualWifiEntryScans$9(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 440
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateSuggestedDualWifiEntryScans$12(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 481
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateSuggestedDualWifiEntryScans$13(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 1

    .line 487
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    .line 488
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$updateWifiConfigurations$15(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 692
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateWifiConfigurations$16(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;
    .locals 0

    .line 693
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateWifiConfigurations$17(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V
    .locals 1

    .line 699
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateWifiConfigurations$18(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 705
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSuggestion()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private notifyOnDualWifiEntriesChanged()V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 899
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnNumSavedNetworksChanged()V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 909
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyOnNumSavedSubscriptionsChanged()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;

    if-eqz v0, :cond_0

    .line 919
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 757
    invoke-virtual {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 760
    invoke-virtual {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_1

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 763
    invoke-virtual {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_2

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mOsuDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 766
    invoke-virtual {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    goto :goto_3

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    if-eqz v0, :cond_4

    .line 769
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz v0, :cond_5

    .line 772
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 775
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyCreateConnectedStandardDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 776
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyCreateConnectedSuggestedDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyCreateConnectedPasspointDualWifiEntry(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private updateMergedCarrierEntry(I)V
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 397
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    .line 405
    :cond_2
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    move-object v1, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;-><init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;ZLandroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    .line 407
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 408
    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 407
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 410
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnDualWifiEntriesChanged()V

    return-void
.end method

.method private updateNetworkRequestConfig(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 711
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    new-instance v4, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    const/4 v0, 0x0

    .line 717
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-direct {v4, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 718
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    :cond_1
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    .line 724
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    return-void
.end method

.method private updateNetworkRequestEntryScans(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 607
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    .line 614
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda13;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;)V

    .line 615
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 616
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 617
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private updateOsuDualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Scan Result list should not be null!"

    .line 562
    invoke-static {p1, p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updatePasspointDualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Scan Result list should not be null!"

    .line 519
    invoke-static {p1, p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateStandardDualWifiEntryScans(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 436
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;

    .line 440
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;

    .line 441
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 442
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 445
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 452
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    .line 453
    new-instance v5, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    const/4 v2, 0x1

    invoke-direct {v5, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;Z)V

    .line 455
    new-instance v11, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    .line 456
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 457
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v9, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Ljava/util/List;Ljava/util/List;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 459
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    sget-object p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda23;

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private updateSuggestedDualWifiEntryScans(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Scan Result list should not be null!"

    .line 477
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda15;

    .line 481
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda9;

    .line 482
    invoke-static {v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 485
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 486
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateWifiConfigurations(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Config list should not be null!"

    .line 663
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 665
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 668
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 673
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointWifiConfigCache:Landroid/util/SparseArray;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 675
    :cond_1
    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v3, :cond_3

    .line 676
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 680
    :cond_3
    iget-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v3, :cond_4

    .line 681
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    :cond_4
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 684
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_5
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateNetworkRequestConfig(Ljava/util/List;)V

    .line 690
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardWifiConfigCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;

    .line 691
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda16;

    .line 692
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda6;

    .line 693
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 694
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    .line 695
    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNumSavedNetworks:I

    .line 698
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 702
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method public getConnectedDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-object p0
.end method

.method protected getContextualDualWifiEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDualWifiEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumSavedNetworks()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNumSavedNetworks:I

    return p0
.end method

.method public getNumSavedSubscriptions()I
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 227
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->processConfiguredNetworksChanged()V

    return-void
.end method

.method protected handleDefaultRouteChanged()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_1

    .line 297
    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsDefaultNetwork(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsLowQuality(Z)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz v0, :cond_2

    .line 301
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->updateIsCellDefaultRoute(Z)V

    :cond_2
    return-void
.end method

.method protected handleDefaultSubscriptionChanged(I)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateMergedCarrierEntry(I)V

    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz p0, :cond_1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateLinkProperties(Landroid/net/LinkProperties;)V

    :cond_1
    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsLowQuality(Z)V

    .line 289
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz p0, :cond_2

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_2
    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 309
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->onScoreCacheUpdated()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 312
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->onScoreCacheUpdated()V

    goto :goto_1

    .line 314
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    .line 315
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->onScoreCacheUpdated()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 251
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networkInfo"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 253
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateDualWifiEntries()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 195
    invoke-direct {p0, v0, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnNumSavedNetworksChanged()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnNumSavedSubscriptionsChanged()V

    .line 198
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->handleDefaultSubscriptionChanged(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateDualWifiEntries()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 203
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->handleDefaultRouteChanged()V

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mMergedCarrierEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;

    if-eqz v1, :cond_1

    .line 265
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    :cond_1
    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 218
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateDualWifiEntries()V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->conditionallyUpdateScanResults(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateDualWifiEntries()V

    return-void
.end method

.method protected processConfiguredNetworksChanged()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateWifiConfigurations(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateStandardDualWifiEntryScans(Ljava/util/List;)V

    .line 240
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateNetworkRequestEntryScans(Ljava/util/List;)V

    .line 241
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updatePasspointDualWifiEntryScans(Ljava/util/List;)V

    .line 242
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateOsuDualWifiEntryScans(Ljava/util/List;)V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnNumSavedNetworksChanged()V

    .line 244
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnNumSavedSubscriptionsChanged()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->updateDualWifiEntries()V

    return-void
.end method

.method protected updateContextualDualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected updateDualWifiEntries()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda22;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iput-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda21;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iput-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda19;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 348
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iput-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mNetworkRequestEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    iput-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 355
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    .line 356
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda12;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;)V

    .line 357
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda8;

    .line 359
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 360
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 361
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mStandardDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 362
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result v4

    if-nez v4, :cond_4

    .line 366
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 369
    :cond_4
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mSuggestedDualWifiEntryCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda24;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 373
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 371
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mPasspointDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 375
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 374
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mOsuDualWifiEntryCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda18;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 378
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 379
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->getContextualDualWifiEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda17;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 380
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 381
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 382
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "DualWifiPickerTracker"

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected DualWifiEntry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mConnectedDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DualWifiPickerTracker"

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated WifiEntries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->mDualWifiEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->notifyOnDualWifiEntriesChanged()V

    return-void

    :catchall_0
    move-exception p0

    .line 386
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.class public Lcom/android/settings/dualwifi/DualWifiTrackerLibProviderImpl;
.super Ljava/lang/Object;
.source "DualWifiTrackerLibProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dualwifi/DualWifiTrackerLibProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDualWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;
    .locals 15

    move-object/from16 v2, p2

    .line 31
    new-instance v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;

    .line 33
    invoke-static/range {p2 .. p2}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v3

    const-class v0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 35
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/NetworkScoreManager;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$DualWifiPickerTrackerCallback;)V

    return-object v14
.end method

.method public createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;
    .locals 13

    move-object v1, p2

    .line 52
    invoke-static {p2}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v2

    const-class v0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/NetworkScoreManager;

    move-object v0, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    .line 50
    invoke-static/range {v0 .. v12}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    return-object v0
.end method

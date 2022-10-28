.class Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$4;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "BaseDualWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Handler;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$4;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public networkCacheUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$4;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleNetworkScoreCacheUpdated()V

    return-void
.end method

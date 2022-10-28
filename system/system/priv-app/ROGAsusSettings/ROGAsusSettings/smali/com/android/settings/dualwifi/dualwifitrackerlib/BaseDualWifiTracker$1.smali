.class Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseDualWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 63
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 65
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "asus.net.vicewifi.WIFI_STATE_CHANGED"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-object p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 76
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$200(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->access$300(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$200(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->access$400(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$500(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleWifiStateChangedAction()V

    goto/16 :goto_1

    :cond_3
    const-string v0, "asus.net.vicewifi.SCAN_RESULTS"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-object v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1$$ExternalSyntheticLambda0;

    .line 84
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    .line 85
    invoke-static {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$600(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 86
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 83
    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager;->requestScores(Ljava/util/Collection;)Z

    .line 87
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleScanResultsAvailableAction(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v0, "asus.net.vicewifi.CONFIGURED_NETWORKS_CHANGE"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v0, "asus.net.vicewifi.STATE_CHANGE"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v0, "asus.net.vicewifi.RSSI_CHANGED"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleRssiChangedAction()V

    goto :goto_1

    :cond_7
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 95
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 p1, -0x1

    const-string v0, "subscription"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleDefaultSubscriptionChanged(I)V

    :cond_8
    :goto_1
    return-void
.end method

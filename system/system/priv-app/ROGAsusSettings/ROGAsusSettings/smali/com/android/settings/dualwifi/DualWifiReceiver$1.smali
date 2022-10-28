.class Lcom/android/settings/dualwifi/DualWifiReceiver$1;
.super Landroid/os/Handler;
.source "DualWifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiReceiver;->setTimer(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string p1, "DualWifiReceiver"

    const-string v0, "receiver message"

    .line 391
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$000()Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiViceManager(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$002(Lasus/net/vicewifi/WifiViceManager;)Lasus/net/vicewifi/WifiViceManager;

    .line 395
    :cond_0
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$000()Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$000()Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Timeout, disable dual Wi-Fi"

    .line 396
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$100(Landroid/content/Context;Z)Z

    .line 399
    :cond_1
    invoke-static {v1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$202(Z)Z

    return-void
.end method

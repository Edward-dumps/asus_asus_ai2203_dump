.class Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asus.net.vicewifi.STATE_CHANGE"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "networkInfo"

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 67
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$002(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Z)Z

    .line 69
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$100(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    goto :goto_1

    :cond_1
    const-string p2, "change_system_mode"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DualWifiSummaryUpdater"

    const-string p2, "system mode change"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$200(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    :cond_2
    :goto_1
    return-void
.end method

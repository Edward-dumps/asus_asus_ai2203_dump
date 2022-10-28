.class Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;
.super Ljava/lang/Object;
.source "DualWifiSummaryUpdater.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;
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

    .line 159
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/IPowerSaverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$502(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 164
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$602(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Z)Z

    const-string p1, "DualWifiSummaryUpdater"

    const-string p2, "onServiceConnected"

    .line 165
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$700(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$502(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 172
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$602(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Z)Z

    const-string p1, "DualWifiSummaryUpdater"

    const-string v0, "onServiceConnected"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$800(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    return-void
.end method

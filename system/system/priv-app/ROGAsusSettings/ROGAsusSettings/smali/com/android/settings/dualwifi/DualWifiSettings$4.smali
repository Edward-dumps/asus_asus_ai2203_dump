.class Lcom/android/settings/dualwifi/DualWifiSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$4;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$4;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$000(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/DualWifiEnabler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 408
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$4;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$000(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/DualWifiEnabler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->notifySwitchUpdate()V

    :cond_0
    return-void
.end method

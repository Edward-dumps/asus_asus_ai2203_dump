.class Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiPrimarySwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$1;->this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$1;->this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->access$000(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->access$100(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;I)V

    :cond_0
    return-void
.end method

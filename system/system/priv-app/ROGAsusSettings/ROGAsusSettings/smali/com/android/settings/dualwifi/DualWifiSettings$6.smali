.class Lcom/android/settings/dualwifi/DualWifiSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSettings;
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

    .line 1237
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 1242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DualWifiSettings"

    const-string v3, "networkInfo"

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1245
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 1246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Main Wi-Fi, detailed state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_0

    .line 1252
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object p1, p1, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 1253
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1254
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p2

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->getBandIndex(I)I

    move-result v5

    .line 1256
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$802(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$902(Lcom/android/settings/dualwifi/DualWifiSettings;I)I

    .line 1258
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1002(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    goto :goto_0

    .line 1260
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1002(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    .line 1262
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1100(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    .line 1263
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1200(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/WifiInfoPreference;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1300(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "asus.net.vicewifi.STATE_CHANGE"

    .line 1264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1266
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1267
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 1268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dual Wi-Fi, detailed state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_2

    .line 1274
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object p1, p1, Lcom/android/settings/dualwifi/DualWifiSettings;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 1275
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p2

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->getBandIndex(I)I

    move-result v5

    .line 1278
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1402(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1502(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    .line 1280
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v4, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1600(Lcom/android/settings/dualwifi/DualWifiSettings;Ljava/lang/String;I)V

    goto :goto_1

    .line 1283
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1502(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    .line 1285
    :goto_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1700(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/WifiInfoPreference;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1300(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 1286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0xe

    const-string/jumbo v0, "wifi_state"

    .line 1287
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    const/16 p2, 0xb

    if-ne p1, p2, :cond_6

    .line 1290
    :cond_4
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1100(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    goto :goto_2

    :cond_5
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1292
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1293
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    iget-object p1, p1, Lcom/android/settings/dualwifi/DualWifiSettings;->mMainWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    .line 1294
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1002(Lcom/android/settings/dualwifi/DualWifiSettings;Z)Z

    .line 1295
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1200(Lcom/android/settings/dualwifi/DualWifiSettings;)Lcom/android/settings/dualwifi/WifiInfoPreference;

    move-result-object p2

    invoke-static {p1, p2, v4, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1300(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/WifiInfoPreference;Ljava/lang/String;I)V

    .line 1296
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$1100(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    .line 1297
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$6;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-virtual {p0, v5}, Lcom/android/settings/dualwifi/DualWifiSettings;->setProgressBarVisible(Z)V

    :cond_6
    :goto_2
    return-void
.end method

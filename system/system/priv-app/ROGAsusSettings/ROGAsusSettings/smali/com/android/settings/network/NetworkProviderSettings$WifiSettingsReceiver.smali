.class Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkProviderSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSettingsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$1;)V
    .locals 0

    .line 1522
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkProviderSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object v0, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1528
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$800(Lcom/android/settings/network/NetworkProviderSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Restart AP due to extendedness changed"

    .line 1529
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1531
    new-instance p2, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver$1;-><init>(Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;)V

    invoke-virtual {p1, v3, v2, p2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 1532
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p0, v3}, Lcom/android/settings/network/NetworkProviderSettings;->access$802(Lcom/android/settings/network/NetworkProviderSettings;Z)Z

    goto/16 :goto_2

    :cond_0
    const-string v0, "asus.net.vicewifi.STATE_CHANGE"

    .line 1533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1534
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p1}, Lcom/android/settings/network/NetworkProviderSettings;->access$900(Lcom/android/settings/network/NetworkProviderSettings;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "networkInfo"

    .line 1537
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1538
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 1540
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, p2, :cond_2

    .line 1541
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$1002(Lcom/android/settings/network/NetworkProviderSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1543
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dual Wi-Fi, detailed state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p1}, Lcom/android/settings/network/NetworkProviderSettings;->access$900(Lcom/android/settings/network/NetworkProviderSettings;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p1

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    .line 1546
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p2}, Lcom/android/settings/network/NetworkProviderSettings;->access$900(Lcom/android/settings/network/NetworkProviderSettings;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByNetwordId(Lasus/net/vicewifi/WifiViceManager;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settings/network/NetworkProviderSettings;->access$1002(Lcom/android/settings/network/NetworkProviderSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1548
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p1, p1, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_3

    return-void

    .line 1553
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    move p2, v3

    :goto_0
    if-ge p2, p1, :cond_7

    .line 1555
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object v0, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 1556
    instance-of v4, v0, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    if-eqz v4, :cond_6

    .line 1557
    check-cast v0, Lcom/android/settingslib/wifi/LongPressWifiEntryPreference;

    .line 1558
    iget-object v4, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v4}, Lcom/android/settings/network/NetworkProviderSettings;->access$1000(Lcom/android/settings/network/NetworkProviderSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1559
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getNetworkKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v5}, Lcom/android/settings/network/NetworkProviderSettings;->access$1000(Lcom/android/settings/network/NetworkProviderSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    .line 1560
    :goto_1
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v5}, Lcom/android/settings/network/NetworkProviderSettings;->access$1000(Lcom/android/settings/network/NetworkProviderSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref.getNetworkKey()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->getNetworkKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mDualConnectedConfig.getKey()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiSettingsReceiver;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    .line 1562
    invoke-static {v6}, Lcom/android/settings/network/NetworkProviderSettings;->access$1000(Lcom/android/settings/network/NetworkProviderSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isDualConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1561
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_5
    invoke-virtual {v0, v4}, Lcom/android/settingslib/wifi/WifiEntryPreference;->setCurrentDualConnected(Z)V

    .line 1566
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiEntryPreference;->refresh()V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

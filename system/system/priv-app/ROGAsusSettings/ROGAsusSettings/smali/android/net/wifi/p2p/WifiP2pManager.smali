.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1133
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel needs to be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1146
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1147
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceAddress cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1145
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "config cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getMessenger(Landroid/os/Binder;Ljava/lang/String;)Landroid/os/Messenger;
    .locals 0

    .line 1834
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Messenger;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1836
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private initializeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 1181
    :cond_0
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V

    .line 1182
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result p0

    if-nez p0, :cond_1

    .line 1184
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 1185
    iget-object p1, v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.p2p.CALLING_PACKAGE"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object p1, v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.p2p.CALLING_FEATURE_ID"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.net.wifi.p2p.CALLING_BINDER"

    .line 1187
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1188
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p1

    const p2, 0x22060

    const/4 p3, 0x0

    .line 1189
    invoke-static {v7, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p4

    .line 1188
    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-object v7

    .line 1192
    :cond_1
    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    return-object v0
.end method


# virtual methods
.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1279
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1280
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x2200a

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 1262
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1263
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1264
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p3, 0x22007

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 1304
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1305
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    .line 1306
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x2200d

    const/4 v0, -0x2

    .line 1305
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_STACK",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1756
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1757
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p3, 0x22036

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 1218
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1219
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22001

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1924
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1925
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22052

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 6

    .line 1161
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 1163
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger(Landroid/os/Binder;Ljava/lang/String;)Landroid/os/Messenger;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1162
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initializeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    return-object p0
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1354
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1355
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22010

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 1

    .line 1649
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1650
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22015

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 2050
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-eqz p2, :cond_0

    .line 2052
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    const v0, 0x22061

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void

    .line 2051
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This listener cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V
    .locals 2

    .line 2021
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-eqz p2, :cond_0

    .line 2023
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    const v0, 0x2205e

    const/4 v1, 0x0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void

    .line 2022
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This listener cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    .line 1638
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1639
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22013

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_STACK",
            "android.permission.READ_WIFI_CREDENTIAL"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1776
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1777
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22039

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_STACK",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1681
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1682
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1683
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1684
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p2

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p3, 0x22033

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1, p0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_STACK",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1406
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1407
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "lc"

    .line 1408
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "oc"

    .line 1409
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p2

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p3, 0x22047

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1, p0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1369
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1370
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22041

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1384
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1385
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22044

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1234
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1235
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result p1

    const p2, 0x22004

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0

    .line 924
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 925
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 930
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 931
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 1065
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignored "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiP2pManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    if-eqz v0, :cond_1

    .line 1060
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1061
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;->onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_0

    :sswitch_1
    if-eqz v0, :cond_1

    .line 1054
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/NetworkInfo;

    .line 1055
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;->onNetworkInfoAvailable(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz v0, :cond_1

    .line 1048
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;

    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 1049
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$DiscoveryStateListener;->onDiscoveryStateAvailable(I)V

    goto/16 :goto_0

    :sswitch_3
    if-eqz v0, :cond_1

    .line 1042
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;

    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 1043
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;->onP2pStateAvailable(I)V

    goto/16 :goto_0

    .line 1034
    :sswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pConfig;

    if-eqz v0, :cond_1

    .line 1036
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;

    .line 1037
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$OngoingPeerInfoListener;->onOngoingPeerAvailable(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_0

    .line 1024
    :sswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string p1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    .line 1027
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1029
    :cond_0
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 1030
    invoke-interface {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    :sswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    if-eqz v0, :cond_1

    .line 1019
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .line 1020
    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .line 1013
    :sswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 1014
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .line 1007
    :sswitch_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_1

    .line 1009
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 1001
    :sswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v0, :cond_1

    .line 1003
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 995
    :sswitch_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_1

    .line 997
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    :sswitch_b
    if-eqz v0, :cond_1

    .line 991
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    :sswitch_c
    if-eqz v0, :cond_1

    .line 963
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 933
    :sswitch_d
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 934
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 935
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p0, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_d
        0x22002 -> :sswitch_c
        0x22003 -> :sswitch_b
        0x22005 -> :sswitch_c
        0x22006 -> :sswitch_b
        0x22008 -> :sswitch_c
        0x22009 -> :sswitch_b
        0x2200b -> :sswitch_c
        0x2200c -> :sswitch_b
        0x2200e -> :sswitch_c
        0x2200f -> :sswitch_b
        0x22011 -> :sswitch_c
        0x22012 -> :sswitch_b
        0x22014 -> :sswitch_a
        0x22016 -> :sswitch_9
        0x22018 -> :sswitch_8
        0x2201d -> :sswitch_c
        0x2201e -> :sswitch_b
        0x22020 -> :sswitch_c
        0x22021 -> :sswitch_b
        0x22023 -> :sswitch_c
        0x22024 -> :sswitch_b
        0x22026 -> :sswitch_c
        0x22027 -> :sswitch_b
        0x22029 -> :sswitch_c
        0x2202a -> :sswitch_b
        0x2202c -> :sswitch_c
        0x2202d -> :sswitch_b
        0x2202f -> :sswitch_c
        0x22030 -> :sswitch_b
        0x22032 -> :sswitch_7
        0x22034 -> :sswitch_c
        0x22035 -> :sswitch_b
        0x22037 -> :sswitch_c
        0x22038 -> :sswitch_b
        0x2203a -> :sswitch_6
        0x2203c -> :sswitch_c
        0x2203d -> :sswitch_b
        0x2203f -> :sswitch_c
        0x22040 -> :sswitch_b
        0x22042 -> :sswitch_c
        0x22043 -> :sswitch_b
        0x22045 -> :sswitch_c
        0x22046 -> :sswitch_b
        0x22048 -> :sswitch_c
        0x22049 -> :sswitch_b
        0x2204d -> :sswitch_5
        0x22050 -> :sswitch_b
        0x22051 -> :sswitch_c
        0x22053 -> :sswitch_c
        0x22054 -> :sswitch_b
        0x22056 -> :sswitch_4
        0x22058 -> :sswitch_c
        0x22059 -> :sswitch_b
        0x2205b -> :sswitch_3
        0x2205d -> :sswitch_2
        0x2205f -> :sswitch_1
        0x22062 -> :sswitch_0
    .end sparse-switch
.end method

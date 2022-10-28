.class Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestUserSelectionCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 2003
    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    return-void
.end method


# virtual methods
.method public reject()V
    .locals 2

    .line 2023
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    const-string v1, "WifiManager"

    if-eqz v0, :cond_0

    const-string v0, "NetworkRequestUserSelectionCallbackProxy: reject"

    .line 2024
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-interface {p0}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->reject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to invoke onRejected"

    .line 2029
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2030
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public select(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 2009
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    const-string v1, "WifiManager"

    if-eqz v0, :cond_0

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkRequestUserSelectionCallbackProxy: select wificonfiguration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;->mCallback:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to invoke onSelected"

    .line 2016
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2017
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

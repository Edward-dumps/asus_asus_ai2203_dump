.class public interface abstract Landroid/net/wifi/WifiManager$SoftApCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoftApCallback"
.end annotation


# virtual methods
.method public onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .locals 0

    return-void
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 0

    return-void
.end method

.method public onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onInfoChanged(Landroid/net/wifi/SoftApInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStateChanged(II)V
    .locals 0

    return-void
.end method

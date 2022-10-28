.class public interface abstract Landroid/net/wifi/ISoftApCallback;
.super Ljava/lang/Object;
.source "ISoftApCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISoftApCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

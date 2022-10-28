.class public interface abstract Landroid/net/wifi/INetworkRequestUserSelectionCallback;
.super Ljava/lang/Object;
.source "INetworkRequestUserSelectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract reject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract select(Landroid/net/wifi/WifiConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

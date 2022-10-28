.class public interface abstract Landroid/net/wifi/p2p/IWifiP2pManager;
.super Ljava/lang/Object;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract close(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMessenger(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

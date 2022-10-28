.class Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkRequestUserSelectionCallback.java"

# interfaces
.implements Landroid/net/wifi/INetworkRequestUserSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/wifi/INetworkRequestUserSelectionCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public reject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.net.wifi.INetworkRequestUserSelectionCallback"

    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 137
    invoke-static {}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->getDefaultImpl()Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    invoke-static {}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->getDefaultImpl()Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->reject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw p0
.end method

.method public select(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.net.wifi.INetworkRequestUserSelectionCallback"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    :goto_0
    iget-object p0, p0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 120
    invoke-static {}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->getDefaultImpl()Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 121
    invoke-static {}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->getDefaultImpl()Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/net/wifi/INetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw p0
.end method

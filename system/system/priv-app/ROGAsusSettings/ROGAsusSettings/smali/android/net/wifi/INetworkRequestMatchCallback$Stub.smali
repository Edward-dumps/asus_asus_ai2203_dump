.class public abstract Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkRequestMatchCallback.java"

# interfaces
.implements Landroid/net/wifi/INetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/INetworkRequestMatchCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    .line 41
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.net.wifi.INetworkRequestMatchCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 112
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 120
    :cond_1
    invoke-interface {p0, v3}, Landroid/net/wifi/INetworkRequestMatchCallback;->onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V

    return v0

    .line 99
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 102
    sget-object p1, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 107
    :cond_3
    invoke-interface {p0, v3}, Landroid/net/wifi/INetworkRequestMatchCallback;->onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V

    return v0

    .line 91
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    sget-object p1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 94
    invoke-interface {p0, p1}, Landroid/net/wifi/INetworkRequestMatchCallback;->onMatch(Ljava/util/List;)V

    return v0

    .line 85
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Landroid/net/wifi/INetworkRequestMatchCallback;->onAbort()V

    return v0

    .line 77
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object p1

    .line 80
    invoke-interface {p0, p1}, Landroid/net/wifi/INetworkRequestMatchCallback;->onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return v0

    .line 69
    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method

.class public abstract Landroid/net/wifi/ISoftApCallback$Stub;
.super Landroid/os/Binder;
.source "ISoftApCallback.java"

# interfaces
.implements Landroid/net/wifi/ISoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ISoftApCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Lizrzvbm2A5GICUY9E9pyMDY_7w(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/wifi/ISoftApCallback$Stub;->lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vmp9NqBGpPZjktV5SBPN5fyAlho(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/wifi/ISoftApCallback$Stub;->lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.ISoftApCallback"

    .line 67
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Landroid/net/wifi/SoftApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/SoftApInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 127
    :goto_0
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 137
    sget-object v0, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0

    .line 138
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v1, "android.net.wifi.ISoftApCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 163
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 166
    sget-object p1, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/WifiClient;

    .line 172
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 173
    invoke-interface {p0, v3, p1}, Landroid/net/wifi/ISoftApCallback;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    return v0

    .line 150
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    sget-object p1, Landroid/net/wifi/SoftApCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/wifi/SoftApCapability;

    .line 158
    :cond_3
    invoke-interface {p0, v3}, Landroid/net/wifi/ISoftApCallback;->onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V

    return v0

    .line 113
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_5

    move-object p3, v3

    goto :goto_0

    .line 117
    :cond_5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 p4, 0x0

    .line 118
    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v1, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_6

    goto :goto_1

    .line 133
    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 134
    :goto_1
    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v1, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, v3}, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    move p1, p4

    .line 144
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_8

    move p4, v0

    .line 145
    :cond_8
    invoke-interface {p0, p3, v3, p1, p4}, Landroid/net/wifi/ISoftApCallback;->onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V

    return v0

    .line 103
    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 108
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/ISoftApCallback;->onStateChanged(II)V

    return v0

    .line 95
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method

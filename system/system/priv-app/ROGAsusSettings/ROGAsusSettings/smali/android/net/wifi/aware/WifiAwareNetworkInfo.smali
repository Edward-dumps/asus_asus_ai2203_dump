.class public final Landroid/net/wifi/aware/WifiAwareNetworkInfo;
.super Ljava/lang/Object;
.source "WifiAwareNetworkInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIpv6Addr:Ljava/net/Inet6Address;

.field private final mPort:I

.field private final mTransportProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;II)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    .line 71
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 72
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 188
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    .line 189
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    iget p1, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AwareNetworkInfo: IPv6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transportProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 128
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {p2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {p2}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

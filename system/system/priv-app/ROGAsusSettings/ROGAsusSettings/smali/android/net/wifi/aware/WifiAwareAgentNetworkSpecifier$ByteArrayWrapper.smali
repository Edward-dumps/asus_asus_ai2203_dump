.class Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
.super Ljava/lang/Object;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayWrapper"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 190
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 193
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object p1, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 182
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 221
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    invoke-static {p0}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 203
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

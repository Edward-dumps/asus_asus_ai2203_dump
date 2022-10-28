.class Landroid/net/wifi/SoftApCapability$1;
.super Ljava/lang/Object;
.source "SoftApCapability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApCapability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApCapability;
    .locals 2

    .line 300
    new-instance p0, Landroid/net/wifi/SoftApCapability;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/SoftApCapability;-><init>(J)V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApCapability;->access$002(Landroid/net/wifi/SoftApCapability;I)I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/SoftApCapability;->setSupportedChannelList(I[I)Z

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApCapability$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApCapability;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/SoftApCapability;
    .locals 0

    .line 310
    new-array p0, p1, [Landroid/net/wifi/SoftApCapability;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApCapability$1;->newArray(I)[Landroid/net/wifi/SoftApCapability;

    move-result-object p0

    return-object p0
.end method

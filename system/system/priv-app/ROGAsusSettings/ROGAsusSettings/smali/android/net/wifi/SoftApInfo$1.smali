.class Landroid/net/wifi/SoftApInfo$1;
.super Ljava/lang/Object;
.source "SoftApInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApInfo;
    .locals 2

    .line 334
    new-instance p0, Landroid/net/wifi/SoftApInfo;

    invoke-direct {p0}, Landroid/net/wifi/SoftApInfo;-><init>()V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApInfo;->access$002(Landroid/net/wifi/SoftApInfo;I)I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApInfo;->access$102(Landroid/net/wifi/SoftApInfo;I)I

    .line 337
    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApInfo;->access$202(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)Landroid/net/MacAddress;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApInfo;->access$302(Landroid/net/wifi/SoftApInfo;I)I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/SoftApInfo;->access$402(Landroid/net/wifi/SoftApInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/SoftApInfo;->access$502(Landroid/net/wifi/SoftApInfo;J)J

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/SoftApInfo;
    .locals 0

    .line 345
    new-array p0, p1, [Landroid/net/wifi/SoftApInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApInfo$1;->newArray(I)[Landroid/net/wifi/SoftApInfo;

    move-result-object p0

    return-object p0
.end method

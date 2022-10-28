.class Landroid/net/wifi/aware/SubscribeConfig$1;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/SubscribeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;
    .locals 11

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v6

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v6

    .line 164
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v9, v0

    goto :goto_2

    :cond_2
    move v9, v6

    .line 167
    :goto_2
    new-instance p1, Landroid/net/wifi/aware/SubscribeConfig;

    move-object v0, p1

    move v6, p0

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZZIZI)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;
    .locals 0

    .line 151
    new-array p0, p1, [Landroid/net/wifi/aware/SubscribeConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/SubscribeConfig$1;->newArray(I)[Landroid/net/wifi/aware/SubscribeConfig;

    move-result-object p0

    return-object p0
.end method

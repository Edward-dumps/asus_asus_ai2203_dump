.class Landroid/net/wifi/aware/ConfigRequest$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/ConfigRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;
    .locals 10

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 134
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 135
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 140
    new-instance p0, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/ConfigRequest;
    .locals 0

    .line 128
    new-array p0, p1, [Landroid/net/wifi/aware/ConfigRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/ConfigRequest$1;->newArray(I)[Landroid/net/wifi/aware/ConfigRequest;

    move-result-object p0

    return-object p0
.end method

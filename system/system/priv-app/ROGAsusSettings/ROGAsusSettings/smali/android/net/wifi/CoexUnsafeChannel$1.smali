.class Landroid/net/wifi/CoexUnsafeChannel$1;
.super Ljava/lang/Object;
.source "CoexUnsafeChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/CoexUnsafeChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/CoexUnsafeChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/CoexUnsafeChannel;
    .locals 2

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    new-instance v1, Landroid/net/wifi/CoexUnsafeChannel;

    invoke-direct {v1, p0, v0, p1}, Landroid/net/wifi/CoexUnsafeChannel;-><init>(III)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/CoexUnsafeChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/CoexUnsafeChannel;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/CoexUnsafeChannel;
    .locals 0

    .line 159
    new-array p0, p1, [Landroid/net/wifi/CoexUnsafeChannel;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Landroid/net/wifi/CoexUnsafeChannel$1;->newArray(I)[Landroid/net/wifi/CoexUnsafeChannel;

    move-result-object p0

    return-object p0
.end method

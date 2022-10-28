.class Landroid/net/wifi/aware/AwareResources$1;
.super Ljava/lang/Object;
.source "AwareResources.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/AwareResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/AwareResources;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/AwareResources;
    .locals 2

    .line 148
    new-instance p0, Landroid/net/wifi/aware/AwareResources;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/net/wifi/aware/AwareResources;-><init>(III)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/AwareResources$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/AwareResources;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/AwareResources;
    .locals 0

    .line 153
    new-array p0, p1, [Landroid/net/wifi/aware/AwareResources;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/AwareResources$1;->newArray(I)[Landroid/net/wifi/aware/AwareResources;

    move-result-object p0

    return-object p0
.end method

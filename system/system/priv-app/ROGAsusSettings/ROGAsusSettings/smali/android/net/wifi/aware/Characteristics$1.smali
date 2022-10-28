.class Landroid/net/wifi/aware/Characteristics$1;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/Characteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/Characteristics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/Characteristics;
    .locals 0

    .line 150
    new-instance p0, Landroid/net/wifi/aware/Characteristics;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/Characteristics;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/Characteristics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/Characteristics;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/Characteristics;
    .locals 0

    .line 156
    new-array p0, p1, [Landroid/net/wifi/aware/Characteristics;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/Characteristics$1;->newArray(I)[Landroid/net/wifi/aware/Characteristics;

    move-result-object p0

    return-object p0
.end method

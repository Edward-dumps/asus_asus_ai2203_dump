.class Landroid/net/wifi/rtt/CivicLocation$1;
.super Ljava/lang/Object;
.source "CivicLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/CivicLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/CivicLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/CivicLocation;
    .locals 1

    .line 97
    new-instance p0, Landroid/net/wifi/rtt/CivicLocation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/CivicLocation;-><init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/CivicLocation$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/CivicLocation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/CivicLocation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/CivicLocation;
    .locals 0

    .line 102
    new-array p0, p1, [Landroid/net/wifi/rtt/CivicLocation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/CivicLocation$1;->newArray(I)[Landroid/net/wifi/rtt/CivicLocation;

    move-result-object p0

    return-object p0
.end method

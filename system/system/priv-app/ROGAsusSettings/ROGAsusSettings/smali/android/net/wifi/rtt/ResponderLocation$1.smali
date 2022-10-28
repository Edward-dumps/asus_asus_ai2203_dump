.class Landroid/net/wifi/rtt/ResponderLocation$1;
.super Ljava/lang/Object;
.source "ResponderLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/ResponderLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/ResponderLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderLocation;
    .locals 1

    .line 398
    new-instance p0, Landroid/net/wifi/rtt/ResponderLocation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/ResponderLocation;-><init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/ResponderLocation$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderLocation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/ResponderLocation;
    .locals 0

    .line 403
    new-array p0, p1, [Landroid/net/wifi/rtt/ResponderLocation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation$1;->newArray(I)[Landroid/net/wifi/rtt/ResponderLocation;

    move-result-object p0

    return-object p0
.end method

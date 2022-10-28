.class Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 1

    .line 286
    new-instance p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;-><init>()V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdn(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setFqdnExactMatch(Z)V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setPriority(I)V

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->setCountries(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    .locals 0

    .line 296
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    move-result-object p0

    return-object p0
.end method

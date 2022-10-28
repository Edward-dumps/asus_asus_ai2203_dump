.class Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 1

    .line 796
    new-instance p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 793
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 0

    .line 804
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 793
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 3

    .line 435
    new-instance p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setMachineManaged(Z)V

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setSoftTokenApp(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setAbleToShare(Z)V

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 0

    .line 448
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object p0

    return-object p0
.end method

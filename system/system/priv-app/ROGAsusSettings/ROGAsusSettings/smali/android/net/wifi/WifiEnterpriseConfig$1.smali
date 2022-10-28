.class Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 5

    .line 359
    new-instance p0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$000(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$102(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$202(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    .line 369
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$302(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    .line 370
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$402(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    .line 371
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$502(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$602(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$702(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->access$802(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->access$902(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 0

    .line 381
    new-array p0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object p0

    return-object p0
.end method

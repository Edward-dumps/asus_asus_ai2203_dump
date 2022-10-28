.class public final Landroid/net/wifi/WifiClient;
.super Ljava/lang/Object;
.source "WifiClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApInstanceIdentifier:Ljava/lang/String;

.field private final mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/net/wifi/WifiClient$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiClient$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/WifiClient$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiClient;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/WifiClient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 105
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiClient;

    .line 106
    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMacAddress()Landroid/net/MacAddress;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiClient{mMacAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mApInstanceIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/net/wifi/WifiClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-object p0, p0, Landroid/net/wifi/WifiClient;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

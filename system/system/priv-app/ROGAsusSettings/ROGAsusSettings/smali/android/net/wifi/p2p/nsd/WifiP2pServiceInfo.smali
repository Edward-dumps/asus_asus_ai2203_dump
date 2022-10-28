.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mQueryList:Ljava/util/List;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    return-void

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "query list cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_1
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 152
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    iget-object p1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 158
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    :goto_0
    const/16 v0, 0x20f

    add-int/2addr v0, p0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 169
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method

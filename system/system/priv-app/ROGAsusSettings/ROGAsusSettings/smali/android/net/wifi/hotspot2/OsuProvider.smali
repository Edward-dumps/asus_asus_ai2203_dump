.class public final Landroid/net/wifi/hotspot2/OsuProvider;
.super Ljava/lang/Object;
.source "OsuProvider.java"

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
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFriendlyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkAccessIdentifier:Ljava/lang/String;

.field private mOsuSsid:Landroid/net/wifi/WifiSsid;

.field private final mServerUri:Landroid/net/Uri;

.field private final mServiceDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    new-instance v0, Landroid/net/wifi/hotspot2/OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 99
    iput-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 100
    iput-object p3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 102
    iput-object p5, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_0

    .line 106
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    :goto_0
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

    .line 219
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 222
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 223
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    .line 224
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 225
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 226
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 227
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 228
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 170
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServerUri()Landroid/net/Uri;
    .locals 0

    .line 184
    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsuProvider{mOsuSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFriendlyNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkAccessIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMethodList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    iget-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 209
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 210
    iget-object p0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyNames:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "friendlyNameMap"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 211
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

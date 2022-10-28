.class public final Landroid/net/wifi/WifiNetworkAgentSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiNetworkAgentSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkAgentSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBand:I

.field private final mMatchLocalOnlySpecifiers:Z

.field private final mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;IZ)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 67
    iput p2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    .line 68
    iput-boolean p3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    return-void
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 109
    instance-of v1, p1, Landroid/net/MatchAllNetworkSpecifier;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    instance-of v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;

    if-eqz v0, :cond_2

    .line 113
    check-cast p1, Landroid/net/wifi/WifiNetworkSpecifier;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z

    move-result p0

    return p0

    .line 115
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

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

    .line 175
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    .line 179
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 180
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 181
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    iget v3, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    iget-boolean p1, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 162
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public redact()Landroid/net/NetworkSpecifier;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z
    .locals 5

    .line 126
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result p1

    iget p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    iget v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-eq v0, v3, :cond_2

    return v2

    .line 141
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v3, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 147
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 148
    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/MacAddress;

    .line 149
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/MacAddress;

    .line 150
    invoke-virtual {v0, v4, v3}, Landroid/net/MacAddress;->matches(Landroid/net/MacAddress;Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 153
    :cond_5
    iget-object p1, p1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiNetworkAgentSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WifiConfiguration="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SSID="

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BSSID="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", band="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchLocalOnlySpecifiers="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget p2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

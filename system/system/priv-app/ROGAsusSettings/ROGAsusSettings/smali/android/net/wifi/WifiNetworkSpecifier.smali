.class public final Landroid/net/wifi/WifiNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bssidPatternMatcher:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mBand:I

.field public final ssidPatternMatcher:Landroid/os/PatternMatcher;

.field public final wifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 688
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 662
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 663
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string v0, "Use the builder to create an instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/os/PatternMatcher;Landroid/util/Pair;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PatternMatcher;",
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;I",
            "Landroid/net/wifi/WifiConfiguration;",
            ")V"
        }
    .end annotation

    .line 670
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 671
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 676
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    .line 677
    iput p3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    .line 678
    iput-object p4, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public static validateBand(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1

    .line 766
    instance-of v0, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    if-eqz v0, :cond_0

    .line 767
    check-cast p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z

    move-result p0

    return p0

    .line 771
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    .line 735
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 738
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiNetworkSpecifier;

    .line 739
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 740
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 741
    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 742
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 741
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    .line 743
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    iget v3, p1, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object p1, p1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 746
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBand()I
    .locals 0

    .line 685
    iget p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 725
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 726
    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    .line 727
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 725
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public redact()Landroid/net/NetworkSpecifier;
    .locals 1

    .line 778
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 780
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    iget p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setBand(I)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetworkSpecifier ["

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SSID Match pattern="

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", BSSID Match pattern="

    .line 755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SSID="

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BSSID="

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", band="

    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 759
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 717
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 718
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 719
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

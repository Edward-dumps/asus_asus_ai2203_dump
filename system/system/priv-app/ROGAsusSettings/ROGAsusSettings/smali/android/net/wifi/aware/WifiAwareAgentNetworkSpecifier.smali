.class public Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDigester:Ljava/security/MessageDigest;

.field private mNetworkSpecifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 50
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    return-object p0
.end method

.method private convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    .locals 2

    .line 160
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 168
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 169
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    new-instance p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;-><init>([B)V

    return-object p1
.end method

.method private initialize()V
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 152
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "WifiAwareAgentNs"

    const-string v0, "Can not instantiate a SHA-256 digester!? Will match nothing."

    .line 154
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 3

    .line 124
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .line 130
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 131
    iget-object v2, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

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

    .line 107
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    iget-object p1, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 99
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public redact()Landroid/net/NetworkSpecifier;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object p1

    .line 142
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 117
    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method

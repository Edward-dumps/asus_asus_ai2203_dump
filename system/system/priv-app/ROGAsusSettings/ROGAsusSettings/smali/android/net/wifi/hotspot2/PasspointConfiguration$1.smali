.class Landroid/net/wifi/hotspot2/PasspointConfiguration$1;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/PasspointConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1006
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1010
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 3

    .line 955
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    const/4 v1, 0x0

    .line 956
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    .line 957
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    .line 958
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V

    .line 959
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    .line 960
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->readTrustRootCerts(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setTrustRootCertList(Ljava/util/Map;)V

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUpdateIdentifier(I)V

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredentialPriority(I)V

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionCreationTimeInMillis(J)V

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionExpirationTimeInMillis(J)V

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setSubscriptionType(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitUsageTimePeriodInMinutes(J)V

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitStartTimeInMillis(J)V

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitDataLimit(J)V

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setUsageLimitTimeLimitInMinutes(J)V

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setAaaServerTrustedNames([Ljava/lang/String;)V

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "serviceFriendlyNames"

    .line 972
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 974
    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setServiceFriendlyNames(Ljava/util/Map;)V

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$002(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$102(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$202(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$302(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$402(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$502(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$602(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$702(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$802(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->access$902(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 952
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 0

    .line 991
    new-array p0, p1, [Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 952
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;->newArray(I)[Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p0

    return-object p0
.end method

.class public final Landroid/net/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExcludedSsidList:[Ljava/lang/String;

.field private mMaximumBssLoadValue:I

.field private mMinHomeDownlinkBandwidth:J

.field private mMinHomeUplinkBandwidth:J

.field private mMinRoamingDownlinkBandwidth:J

.field private mMinRoamingUplinkBandwidth:J

.field private mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mPreferredRoamingPartnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredProtoPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 478
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 78
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 85
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 102
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 109
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 145
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 300
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 311
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method private static writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 548
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, -0x1

    .line 568
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 571
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 573
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 380
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 382
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 386
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 388
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iget v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 392
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez p0, :cond_4

    iget-object p0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_4
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 394
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 399
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 399
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setExcludedSsidList([Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-void
.end method

.method public setMaximumBssLoadValue(I)V
    .locals 0

    .line 147
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return-void
.end method

.method public setMinHomeDownlinkBandwidth(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-void
.end method

.method public setMinHomeUplinkBandwidth(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-void
.end method

.method public setMinRoamingDownlinkBandwidth(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-void
.end method

.method public setMinRoamingUplinkBandwidth(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-void
.end method

.method public setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0

    .line 313
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public setPreferredRoamingPartnerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-void
.end method

.method public setRequiredProtoPortMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinHomeDownlinkBandwidth: "

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MinHomeUplinkBandwidth: "

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MinRoamingDownlinkBandwidth: "

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MinRoamingUplinkBandwidth: "

    .line 413
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExcludedSSIDList: "

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RequiredProtoPortMap: "

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MaximumBSSLoadValue: "

    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PreferredRoamingPartnerList: "

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_0

    const-string v1, "PolicyUpdate Begin ---\n"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "PolicyUpdate End ---\n"

    .line 423
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 361
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 367
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V

    .line 369
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

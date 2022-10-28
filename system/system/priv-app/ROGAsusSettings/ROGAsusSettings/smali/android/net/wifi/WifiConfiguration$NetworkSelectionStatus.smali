.class public Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSelectionStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
    }
.end annotation


# static fields
.field public static final DISABLE_REASON_INFOS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;


# instance fields
.field private mConnectChoice:Ljava/lang/String;

.field private mConnectChoiceRssi:I

.field private mHasEverConnected:Z

.field private mHasNeverDetectedCaptivePortal:Z

.field private mNetworkSeclectionDisableCounter:[I

.field private mNetworkSelectionBSSID:Ljava/lang/String;

.field private mNetworkSelectionDisableReason:I

.field private mStatus:I

.field private mTemporarilyDisabledTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NETWORK_SELECTION_ENABLED"

    const-string v1, "NETWORK_SELECTION_TEMPORARY_DISABLED"

    const-string v2, "NETWORK_SELECTION_PERMANENTLY_DISABLED"

    .line 1804
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    .line 1948
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->buildDisableReasonInfos()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2097
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 2102
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    const/4 v0, 0x1

    .line 2161
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    const/4 v0, 0x0

    .line 2303
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return-void
.end method

.method private static buildDisableReasonInfos()Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;",
            ">;"
        }
    .end annotation

    .line 1951
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1959
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v2, "NETWORK_SELECTION_ENABLE"

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1969
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v2, "NETWORK_SELECTION_DISABLED_ASSOCIATION_REJECTION "

    const/4 v4, 0x3

    const v5, 0x493e0

    invoke-direct {v1, v2, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1977
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v6, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_FAILURE"

    invoke-direct {v1, v6, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1983
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_DHCP_FAILURE"

    invoke-direct {v1, v7, v6, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1989
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_NO_INTERNET_TEMPORARY"

    const v8, 0x927c0

    invoke-direct {v1, v7, v2, v8}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1995
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v7, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_CREDENTIALS"

    invoke-direct {v1, v7, v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2001
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_NO_INTERNET_PERMANENT"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2007
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_BY_WIFI_MANAGER"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2013
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_BY_WRONG_PASSWORD"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2019
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_NO_SUBSCRIPTION"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2025
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v4, "NETWORK_SELECTION_DISABLED_AUTHENTICATION_PRIVATE_EAP_ERROR"

    invoke-direct {v1, v4, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2031
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v3, "NETWORK_SELECTION_DISABLED_NETWORK_NOT_FOUND"

    invoke-direct {v1, v3, v6, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2037
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    const-string v3, "NETWORK_SELECTION_DISABLED_CONSECUTIVE_FAILURES"

    invoke-direct {v1, v3, v2, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static getMaxNetworkSelectionDisableReason()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public static getNetworkSelectionDisableReasonString(I)Ljava/lang/String;
    .locals 1

    .line 2367
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->DISABLE_REASON_INFOS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2371
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mReasonStr:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getConnectChoice()Ljava/lang/String;
    .locals 0

    .line 2242
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-object p0
.end method

.method public getConnectChoiceRssi()I
    .locals 0

    .line 2268
    iget p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceRssi:I

    return p0
.end method

.method public getDisableReasonCounter(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 2479
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aget p0, p0, p1

    return p0

    .line 2481
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal reason value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisableTime()J
    .locals 2

    .line 2467
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-wide v0
.end method

.method public getNetworkSelectionBSSID()Ljava/lang/String;
    .locals 0

    .line 2547
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSelectionDisableReason()I
    .locals 0

    .line 2437
    iget p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return p0
.end method

.method public getNetworkSelectionDisableReasonString()Ljava/lang/String;
    .locals 0

    .line 2380
    iget p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkSelectionStatus()I
    .locals 0

    .line 2392
    iget p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    return p0
.end method

.method public getNetworkStatusString()Ljava/lang/String;
    .locals 1

    .line 2274
    sget-object v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->QUALITY_NETWORK_SELECTION_STATUS:[Ljava/lang/String;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public hasEverConnected()Z
    .locals 0

    .line 2284
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return p0
.end method

.method public hasNeverDetectedCaptivePortal()Z
    .locals 0

    .line 2297
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 2603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 2604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 2607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableReasonCounter(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2609
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 2610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionBSSID(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceRssi(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2615
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 2617
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 2618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasNeverDetectedCaptivePortal(Z)V

    return-void
.end method

.method public setConnectChoice(Ljava/lang/String;)V
    .locals 0

    .line 2251
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoice:Ljava/lang/String;

    return-void
.end method

.method public setConnectChoiceRssi(I)V
    .locals 0

    .line 2260
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mConnectChoiceRssi:I

    return-void
.end method

.method public setDisableReasonCounter(II)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 2494
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSeclectionDisableCounter:[I

    aput p2, p0, p1

    return-void

    .line 2496
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal reason value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDisableTime(J)V
    .locals 0

    .line 2459
    iput-wide p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mTemporarilyDisabledTimestamp:J

    return-void
.end method

.method public setHasEverConnected(Z)V
    .locals 0

    .line 2279
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasEverConnected:Z

    return-void
.end method

.method public setHasNeverDetectedCaptivePortal(Z)V
    .locals 0

    .line 2292
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mHasNeverDetectedCaptivePortal:Z

    return-void
.end method

.method public setNetworkSelectionBSSID(Ljava/lang/String;)V
    .locals 0

    .line 2556
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionBSSID:Ljava/lang/String;

    return-void
.end method

.method public setNetworkSelectionDisableReason(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-ge p1, v0, :cond_0

    .line 2447
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mNetworkSelectionDisableReason:I

    return-void

    .line 2449
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal reason value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNetworkSelectionStatus(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 2426
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->mStatus:I

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 2582
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 2586
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2588
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2589
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2591
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2592
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 2595
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2598
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasNeverDetectedCaptivePortal()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

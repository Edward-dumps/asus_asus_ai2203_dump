.class public Landroid/net/wifi/WifiConfiguration$RecentFailure;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentFailure"
.end annotation


# instance fields
.field private mAssociationStatus:I

.field private mLastUpdateTimeSinceBootMillis:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2641
    iput v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiConfiguration$1;)V
    .locals 0

    .line 2634
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssociationStatus()I
    .locals 0

    .line 2669
    iget p0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    return p0
.end method

.method public getLastUpdateTimeSinceBootMillis()J
    .locals 2

    .line 2676
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mLastUpdateTimeSinceBootMillis:J

    return-wide v0
.end method

.method public setAssociationStatus(IJ)V
    .locals 0

    .line 2650
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 2651
    iput-wide p2, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mLastUpdateTimeSinceBootMillis:J

    return-void
.end method

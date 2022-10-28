.class public final Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableReasonInfo"
.end annotation


# instance fields
.field public final mDisableThreshold:I

.field public final mDisableTimeoutMillis:I

.field public final mReasonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mReasonStr:Ljava/lang/String;

    .line 1938
    iput p2, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mDisableThreshold:I

    .line 1939
    iput p3, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$DisableReasonInfo;->mDisableTimeoutMillis:I

    return-void
.end method

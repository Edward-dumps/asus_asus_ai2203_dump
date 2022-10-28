.class public final Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    new-instance v0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus$Builder;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-void
.end method

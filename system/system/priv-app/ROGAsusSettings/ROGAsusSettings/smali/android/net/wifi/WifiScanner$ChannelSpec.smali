.class public Landroid/net/wifi/WifiScanner$ChannelSpec;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# instance fields
.field public dwellTimeMS:I

.field public frequency:I

.field public passive:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 294
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    return-void
.end method

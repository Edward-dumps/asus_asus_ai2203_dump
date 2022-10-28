.class public Landroid/net/wifi/ScanResult$RadioChainInfo;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioChainInfo"
.end annotation


# instance fields
.field public id:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 501
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 504
    :cond_1
    check-cast p1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 505
    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    iget v3, p1, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    iget p1, p1, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 510
    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioChainInfo: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

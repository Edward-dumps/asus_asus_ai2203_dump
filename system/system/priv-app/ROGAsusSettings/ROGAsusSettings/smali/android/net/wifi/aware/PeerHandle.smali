.class public Landroid/net/wifi/aware/PeerHandle;
.super Ljava/lang/Object;
.source "PeerHandle.java"


# instance fields
.field public peerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 56
    :cond_1
    iget p0, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    check-cast p1, Landroid/net/wifi/aware/PeerHandle;

    iget p1, p1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 61
    iget p0, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    return p0
.end method

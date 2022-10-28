.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mByteOrder:Ljava/nio/ByteOrder;

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mByteOrder:Ljava/nio/ByteOrder;

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-lez p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 501
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 502
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    .line 503
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 504
    :cond_0
    array-length p1, p3

    :goto_0
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return-void

    .line 498
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid sizes - typeSize="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", lengthSize="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$500(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    .line 477
    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return p0
.end method

.method static synthetic access$600(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    .line 477
    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return p0
.end method

.method static synthetic access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B
    .locals 0

    .line 477
    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object p0
.end method

.method static synthetic access$800(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;
    .locals 0

    .line 477
    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mByteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method static synthetic access$900(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    .line 477
    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    const-string v5, ","

    if-nez v3, :cond_1

    .line 527
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v3, 0x0

    const-string v6, " ("

    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget v6, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    if-eqz v6, :cond_2

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "T="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget v5, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-nez v5, :cond_3

    const-string v5, "<null>"

    .line 536
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ne v5, v2, :cond_4

    .line 538
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getByte()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 540
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getShort()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 542
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getInt()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v5, "<bytes>"

    .line 544
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :goto_1
    iget v5, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    if-eqz v5, :cond_0

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (S=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\')"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const-string p0, "]"

    .line 550
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

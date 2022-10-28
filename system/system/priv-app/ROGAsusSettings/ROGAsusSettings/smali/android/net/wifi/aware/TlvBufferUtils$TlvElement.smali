.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvElement"
.end annotation


# instance fields
.field public byteOrder:Ljava/nio/ByteOrder;

.field public length:I

.field private mRefArray:[B

.field public offset:I

.field public type:I


# direct methods
.method private constructor <init>(II[BI)V
    .locals 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    .line 400
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    .line 401
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 402
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    .line 403
    iput p4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    add-int/2addr p4, p2

    .line 405
    array-length p0, p3

    if-gt p4, p0, :cond_0

    return-void

    .line 406
    :cond_0
    new-instance p0, Ljava/nio/BufferOverflowException;

    invoke-direct {p0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p0
.end method

.method synthetic constructor <init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BI)V

    return-void
.end method


# virtual methods
.method public getByte()B
    .locals 3

    .line 427
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    aget-byte p0, v0, p0

    return p0

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing a byte from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt()I
    .locals 3

    .line 457
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p0}, Landroid/net/wifi/aware/TlvBufferUtils;->access$300([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing an int from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort()S
    .locals 3

    .line 442
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, p0}, Landroid/net/wifi/aware/TlvBufferUtils;->access$200([BILjava/nio/ByteOrder;)S

    move-result p0

    return p0

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accesing a short from a TLV element of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .line 470
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->mRefArray:[B

    iget v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

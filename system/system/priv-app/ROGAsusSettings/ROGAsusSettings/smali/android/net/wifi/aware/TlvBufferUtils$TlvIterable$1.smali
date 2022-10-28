.class Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mOffset:I

.field final synthetic this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V
    .locals 0

    .line 573
    iput-object p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 574
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 578
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$500(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;
    .locals 10

    .line 583
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$600(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 589
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v0, v0, v4

    :goto_0
    move v5, v0

    goto :goto_1

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$600(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 591
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v5, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v5}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$800(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/net/wifi/aware/TlvBufferUtils;->access$200([BILjava/nio/ByteOrder;)S

    move-result v0

    goto :goto_0

    :cond_1
    move v5, v3

    .line 593
    :goto_1
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v4, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$600(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 596
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$900(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 597
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    aget-byte v3, v0, v1

    goto :goto_2

    .line 598
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$900(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 599
    iget-object v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$800(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->access$200([BILjava/nio/ByteOrder;)S

    move-result v3

    .line 601
    :cond_3
    :goto_2
    iget v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$900(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    .line 603
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$700(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    const/4 v9, 0x0

    move-object v4, v0

    move v6, v3

    invoke-direct/range {v4 .. v9}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;-><init>(II[BILandroid/net/wifi/aware/TlvBufferUtils$1;)V

    .line 604
    iget-object v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->this$0:Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    invoke-static {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->access$800(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)Ljava/nio/ByteOrder;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->byteOrder:Ljava/nio/ByteOrder;

    .line 605
    iget v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->mOffset:I

    return-object v0

    .line 584
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 573
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;->next()Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 611
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.class public Lcom/android/internal/util/AsyncChannel;
.super Ljava/lang/Object;
.source "AsyncChannel.java"


# static fields
.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mDstMessenger:Landroid/os/Messenger;

.field private mSrcContext:Landroid/content/Context;

.field private mSrcHandler:Landroid/os/Handler;

.field private mSrcMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    sput-object v0, Lcom/android/internal/util/AsyncChannel;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CMD_CHANNEL_HALF_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CMD_CHANNEL_FULL_CONNECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CMD_CHANNEL_FULLY_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CMD_CHANNEL_DISCONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CMD_CHANNEL_DISCONNECTED"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replyDisconnected(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x11004

    .line 909
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 910
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 911
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 912
    iget-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 913
    iget-object p0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    const/4 p0, 0x0

    return p0
.end method

.method public connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation

    .line 409
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcContext:Landroid/content/Context;

    .line 410
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    .line 411
    new-instance p1, Landroid/os/Messenger;

    iget-object p2, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    .line 414
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 468
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x11004

    .line 469
    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 471
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, v0}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcHandler:Landroid/os/Handler;

    return-void
.end method

.method public sendMessage(III)V
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 534
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 535
    iput p1, v0, Landroid/os/Message;->what:I

    .line 536
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 537
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 551
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 552
    iput p1, v0, Landroid/os/Message;->what:I

    .line 553
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 554
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 555
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mSrcMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel;->mDstMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x2

    .line 495
    invoke-direct {p0, p1}, Lcom/android/internal/util/AsyncChannel;->replyDisconnected(I)V

    :goto_0
    return-void
.end method

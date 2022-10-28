.class Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;
.super Landroid/os/Handler;
.source "BaseDualWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mIsActive:Z

.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;


# direct methods
.method public static synthetic $r8$lambda$kBfrIt6B_j2sT4KZ43STmUXuAzM(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->postScan()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Looper;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    .line 457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 453
    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Looper;Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->start()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->stop()V

    return-void
.end method

.method private postScan()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-object v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->startScan()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    iput v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    goto :goto_0

    .line 482
    :cond_0
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 484
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanner failed to start scan "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    iput v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    return-void

    .line 490
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-wide v1, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private start()V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mIsActive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mIsActive:Z

    .line 463
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scanner start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->postScan()V

    :cond_1
    return-void
.end method

.method private stop()V
    .locals 3

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mIsActive:Z

    .line 472
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scanner stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->mRetry:I

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

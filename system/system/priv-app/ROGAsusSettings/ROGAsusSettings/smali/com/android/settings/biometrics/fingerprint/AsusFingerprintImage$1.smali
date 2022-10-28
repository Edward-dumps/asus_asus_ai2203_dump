.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;
.super Ljava/lang/Object;
.source "AsusFingerprintImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, -0x80000000

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    :goto_0
    invoke-static {v0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$002(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;I)I

    .line 427
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;)I

    move-result v0

    .line 435
    :goto_1
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationFinished:Z

    const/4 v1, 0x0

    .line 438
    iput-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->isAnimationRunning:Z

    .line 439
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

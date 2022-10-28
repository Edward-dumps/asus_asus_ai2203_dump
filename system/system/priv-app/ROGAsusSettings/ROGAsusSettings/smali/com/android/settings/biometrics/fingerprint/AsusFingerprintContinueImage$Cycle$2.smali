.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusFingerprintContinueImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->access$302(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 283
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->mCanceled:Z

    if-nez p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;->mCanceled:Z

    return-void
.end method

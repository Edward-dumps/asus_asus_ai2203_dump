.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$10;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->clearMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 663
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

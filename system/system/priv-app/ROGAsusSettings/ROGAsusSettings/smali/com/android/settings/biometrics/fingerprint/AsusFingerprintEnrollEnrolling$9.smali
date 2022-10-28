.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$9;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->clearError()V
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

    .line 620
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 623
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

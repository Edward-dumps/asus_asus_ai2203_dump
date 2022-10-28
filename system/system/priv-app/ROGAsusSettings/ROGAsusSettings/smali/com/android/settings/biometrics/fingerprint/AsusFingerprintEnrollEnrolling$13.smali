.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$13;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
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

    .line 703
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$13;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 706
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$13;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;[B)V

    return-void
.end method

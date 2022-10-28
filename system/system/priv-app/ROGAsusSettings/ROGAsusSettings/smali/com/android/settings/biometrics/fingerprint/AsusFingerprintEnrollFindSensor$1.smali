.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-static {p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 176
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->access$002(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)Z

    .line 177
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-static {p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)V

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->access$002(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)Z

    .line 166
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-static {p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)V

    return-void
.end method

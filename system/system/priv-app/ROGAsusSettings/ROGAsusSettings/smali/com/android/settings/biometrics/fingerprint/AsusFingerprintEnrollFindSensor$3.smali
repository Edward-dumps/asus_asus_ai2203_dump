.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;
.super Landroid/os/CountDownTimer;
.source "AsusFingerprintEnrollFindSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nextButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;JJLandroid/widget/Button;Landroid/content/Context;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    iput-object p6, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$nextButton:Landroid/widget/Button;

    iput-object p7, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$nextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->fingerprint_enroll_button_next:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$nextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$nextButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 366
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 367
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->val$nextButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_find_sensor_next_v2:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

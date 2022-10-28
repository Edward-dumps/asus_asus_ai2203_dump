.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFinish;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.source "FacelockEnrollFinish.java"


# instance fields
.field private mCancelBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 31
    sget v0, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFinish;->mCancelBtn:Landroid/widget/Button;

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "facelock_unlock_device"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/android/settings/R$layout;->asus_facelock_enroll_finish:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(I)V

    .line 26
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_facelock_enroll_finish_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setHeaderText(I)V

    .line 27
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFinish;->initView()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "facelock_unlock_device"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

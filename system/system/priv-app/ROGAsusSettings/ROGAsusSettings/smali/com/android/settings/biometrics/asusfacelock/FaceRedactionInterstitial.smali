.class public Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial;
.super Lcom/android/settings/notification/RedactionInterstitial;
.source "FaceRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 63
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_title_profile:I

    goto :goto_0

    .line 64
    :cond_0
    sget p0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_title:I

    :goto_0
    const-string v1, ":settings:show_fragment_title_resid"

    .line 61
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.USER_ID"

    .line 65
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 45
    const-class p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 51
    const-class p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

.field final synthetic val$root:Landroidx/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$root:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 544
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->val$root:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 545
    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 546
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    .line 547
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$600(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)J

    move-result-wide v2

    const-string p0, "challenge"

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

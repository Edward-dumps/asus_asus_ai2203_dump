.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;Landroid/content/Context;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 818
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;->val$context:Landroid/content/Context;

    const-string v0, "fingerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 819
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;->access$1900(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "DontShowProtector"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 820
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;->val$context:Landroid/content/Context;

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showSideCar()V

    .line 821
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

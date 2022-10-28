.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;
.super Ljava/lang/Object;
.source "FingerprintSettingsConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->access$302(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Z)Z

    .line 473
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V

    return-void
.end method

.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;
.super Landroid/os/Handler;
.source "FingerprintSettingsConfirm.java"


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

    .line 200
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;I)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V

    :goto_0
    return-void
.end method

.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;
.super Ljava/lang/Object;
.source "FingerprintSettingsConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->highlightFingerprintItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Landroid/view/View;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 463
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->refreshAdapter()V

    return-void
.end method

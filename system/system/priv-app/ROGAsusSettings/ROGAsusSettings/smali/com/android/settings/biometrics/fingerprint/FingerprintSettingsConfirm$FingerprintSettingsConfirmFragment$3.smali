.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;
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

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;->val$view:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

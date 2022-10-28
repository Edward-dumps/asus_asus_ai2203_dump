.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

.field final synthetic val$fingerName:Ljava/lang/String;

.field final synthetic val$textSelectionEnd:I

.field final synthetic val$textSelectionStart:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Ljava/lang/String;II)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$fingerName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionStart:I

    iput p4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1095
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/theme/ThemeUtils;->tintDialogInterface(Landroid/content/DialogInterface;Landroid/content/Context;)V

    .line 1098
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->fingerprint_rename_field:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImeAwareEditText;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$802(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/ImeAwareEditText;)Landroid/widget/ImeAwareEditText;

    .line 1099
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/ThemeUtils;->tintEditText(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 1100
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$fingerName:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$900(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$1400()[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1103
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionStart:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionEnd:I

    if-eq p1, v0, :cond_2

    .line 1104
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionStart:I

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->val$textSelectionEnd:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImeAwareEditText;->setSelection(II)V

    goto :goto_0

    .line 1106
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->selectAll()V

    .line 1108
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1500(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1109
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1111
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 1112
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    return-void
.end method

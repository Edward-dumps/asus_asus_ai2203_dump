.class public abstract Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field public mOkButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$BN8KmN1BhT9PN11AVJxGRgafCkE(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hllQtb5WTlAtdLHB0MNy-_L_KtE(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    sget v1, Lcom/android/settings/R$layout;->dialog_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 124
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintEditText(Landroid/widget/EditText;Landroid/content/Context;)V

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 189
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 192
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p0, :cond_2

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract getDeviceName()Ljava/lang/String;
.end method

.method protected abstract getDialogTitle()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "device_name"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_name_edited"

    .line 88
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 90
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDialogTitle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 92
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    .line 93
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 98
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 107
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 162
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 163
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 146
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 172
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    const-string v0, "device_name_edited"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract setDeviceName(Ljava/lang/String;)V
.end method

.method updateDeviceName()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 181
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RenameDeviceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;


# direct methods
.method public static synthetic $r8$lambda$pUdbm304libN7etPB3cV9jl1k7E(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroid/widget/EditText;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private hideSoftKeyboard(Landroid/os/IBinder;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->toggleSoftInput()V

    return-void
.end method

.method private setDeviceNameInCache(Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "about_phone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "rename_device_cache"

    .line 116
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V
    .locals 4

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RenameDeviceDialog"

    .line 77
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v2, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;-><init>()V

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v2, p0, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 83
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private toggleSoftInput()V
    .locals 4

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;-><init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected createDialogView()Landroid/view/View;
    .locals 5

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    sget v1, Lcom/android/settings/R$layout;->dialog_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_name"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 131
    :cond_0
    sget v3, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 133
    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 141
    :cond_1
    new-instance v1, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$EditTextWatcher;-><init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$1;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c3

    return p0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 107
    iget-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->hideSoftKeyboard(Landroid/os/IBinder;)V

    .line 108
    iget-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->setDeviceNameInCache(Ljava/lang/String;)V

    const-string p0, ""

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->showDeviceNameWarningDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 88
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->createDialogView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    sget v0, Lcom/android/settings/R$string;->my_device_info_device_name_preference_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 92
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 93
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 96
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

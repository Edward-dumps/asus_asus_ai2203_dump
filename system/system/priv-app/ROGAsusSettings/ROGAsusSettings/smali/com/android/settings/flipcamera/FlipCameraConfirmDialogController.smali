.class public Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraConfirmDialogController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;

.field private warnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->prepareWarnDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->updateValue()V

    return-void
.end method

.method private prepareWarnDialog()V
    .locals 3

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->asus_advanced_settings_flip_camera_disable_confirmation_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_flip_camera_disable_confirmation_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 56
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_flip_camera_disable_confirmation_yes:I

    new-instance v2, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$1;-><init>(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_flip_camera_disable_confirmation_no:I

    new-instance v2, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$2;-><init>(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    new-instance v1, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$3;-><init>(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->warnDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private updateValue()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "front_camera_confirm_check"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "flip_camera_confirm_dialog"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->warnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "front_camera_confirm_check"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->updateValue()V

    return-void
.end method

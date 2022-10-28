.class public Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "QuickAngleShootingRestoreController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mPreference:Landroidx/preference/Preference;

.field private warnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$1;-><init>(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)V

    iput-object v0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 39
    iput-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->prepareWarnDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/app/AlertDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->warnDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private prepareWarnDialog()V
    .locals 3

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->asus_advanced_settings_quick_angle_shooting_restore_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_quick_angle_shooting_restore_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 74
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_quick_angle_shooting_restore_dialog_ok:I

    new-instance v2, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;-><init>(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_quick_angle_shooting_restore_dialog_cancel:I

    new-instance v2, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$3;

    invoke-direct {v2, p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$3;-><init>(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->warnDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "quick_angle_shooting_restore"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "quick_angle_shooting_restore"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

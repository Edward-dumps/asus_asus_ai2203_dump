.class public Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraAsusCoverCalibrateController.java"


# instance fields
.field private mCalibratePreference:Landroidx/preference/Preference;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController$1;-><init>(Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;)V

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isPackageExist(Landroid/content/Context;)Z
    .locals 2

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.asus.motork"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static startCalibrateSettings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.asus.motork"

    .line 80
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.motork.CoverActivity"

    .line 82
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "asus_cover_calibrate"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->mCalibratePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "asus_cover_calibrate"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->isPackageExist(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

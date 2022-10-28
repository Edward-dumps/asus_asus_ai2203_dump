.class public Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isPackageExist(Landroid/content/Context;)Z
    .locals 2

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.asus.motorservice"

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


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "flip_camera_sound"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->isPackageExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->flip_camera_sound_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->flip_camera_sound_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->getProviderValue(Landroid/content/Context;)I

    move-result p0

    .line 62
    array-length v2, v0

    if-lt p0, v2, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    .line 63
    :cond_0
    aget-object p0, v1, p0

    const/4 v2, 0x0

    .line 66
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 67
    aget-object v3, v1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

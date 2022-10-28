.class public Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraAsusCoverModeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private asusUnlockLatch:Landroidx/preference/PreferenceGroup;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "asus_unlock_latch_category"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->asusUnlockLatch:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "asus_cover_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 69
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_cover_user_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_cover_user_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 54
    check-cast p1, Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverModeController;->asusUnlockLatch:Landroidx/preference/PreferenceGroup;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

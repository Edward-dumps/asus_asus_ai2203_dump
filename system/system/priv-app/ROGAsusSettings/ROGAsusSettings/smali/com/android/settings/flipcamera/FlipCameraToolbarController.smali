.class public Lcom/android/settings/flipcamera/FlipCameraToolbarController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FlipCameraToolbarController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "flip_camera_toolbar"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 56
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 57
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "flip_camera_toolbar_enable"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 49
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flip_camera_toolbar_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 51
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    return-void
.end method

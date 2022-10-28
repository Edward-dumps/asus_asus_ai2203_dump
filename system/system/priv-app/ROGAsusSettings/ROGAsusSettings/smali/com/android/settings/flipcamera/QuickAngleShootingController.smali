.class public Lcom/android/settings/flipcamera/QuickAngleShootingController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "QuickAngleShootingController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "quick_angle_shooting"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 61
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "asus_free_angle_quick_angle_shooting_enable"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_free_angle_quick_angle_shooting_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 55
    check-cast p1, Landroidx/preference/SwitchPreference;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

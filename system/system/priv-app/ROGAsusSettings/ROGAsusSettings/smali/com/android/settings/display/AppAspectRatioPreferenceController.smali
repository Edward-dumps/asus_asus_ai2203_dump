.class public Lcom/android/settings/display/AppAspectRatioPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AppAspectRatioPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static isAppAspectRatioSupported(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "display"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 59
    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    const v1, 0x3fee147b    # 1.86f

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/display/AppAspectRatioPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.asus.hardware.display.camera_notch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.settings.display.NotchAppAspectRatioDashboardFragment"

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings.display.AppAspectRatioDashboardFragment"

    .line 40
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "app_aspect_ratio"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AppAspectRatioPreferenceController;->isAppAspectRatioSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

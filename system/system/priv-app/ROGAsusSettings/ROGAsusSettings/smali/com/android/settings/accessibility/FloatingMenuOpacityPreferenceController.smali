.class public Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "FloatingMenuOpacityPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field static final DEFAULT_OPACITY:F = 0.55f

.field private static final FADE_ENABLED:I = 0x1

.field private static final MAX_PROGRESS:F = 100.0f

.field private static final MIN_PROGRESS:F = 10.0f

.field static final PRECISION:F = 100.0f


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field mPreference:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    new-instance p1, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController$1;-><init>(Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->updateAvailabilityStatus()V

    return-void
.end method

.method private convertOpacityFloatToInt(F)I
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    .line 134
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private convertOpacityIntToFloat(I)F
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private getOpacity()F
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_floating_menu_opacity"

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateAvailabilityStatus()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_fade_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setHapticFeedbackMode(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getMin()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->getOpacity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->convertOpacityFloatToInt(F)I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_button_mode"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_fade_enabled"

    .line 92
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    .line 91
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->convertOpacityIntToFloat(I)F

    move-result p1

    .line 111
    iget-object p0, p0, Lcom/android/settings/accessibility/FloatingMenuOpacityPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_floating_menu_opacity"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.class public Lcom/android/settings/display/AutoBrightnessPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoBrightnessPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final DEFAULT_VALUE:I

.field private final SYSTEM_KEY:Ljava/lang/String;

.field private mAutoBrightnessObserver:Landroid/database/ContentObserver;

.field private final mCr:Landroid/content/ContentResolver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "screen_brightness_mode"

    .line 39
    iput-object p2, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->SYSTEM_KEY:Ljava/lang/String;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->DEFAULT_VALUE:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AutoBrightnessPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_automatic_brightness_available"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 96
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessPreferenceController;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    sget p0, Lcom/android/settings/R$string;->auto_brightness_summary_on:I

    goto :goto_0

    .line 106
    :cond_0
    sget p0, Lcom/android/settings/R$string;->auto_brightness_summary_off:I

    .line 104
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/settings/display/AutoBrightnessPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/AutoBrightnessPreferenceController$1;-><init>(Lcom/android/settings/display/AutoBrightnessPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mCr:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    .line 83
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/display/AutoBrightnessPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

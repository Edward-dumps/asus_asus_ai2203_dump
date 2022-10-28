.class public Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ReduceBrightColorsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mContext:Landroid/content/Context;

.field private mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mSettingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mContext:Landroid/content/Context;

    .line 52
    new-instance p2, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController$1;-><init>(Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 61
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    const/4 p0, 0x3

    .line 96
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

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

    .line 76
    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reduce_bright_colors_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mSettingsContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/accessibility/ReduceBrightColorsPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setReduceBrightColorsActivated(Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

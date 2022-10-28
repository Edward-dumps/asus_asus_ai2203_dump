.class public Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;
.super Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;
.source "OneHandedMainSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mOffText:Ljava/lang/String;

.field private mOnText:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/widget/AsusresMainSwitchPreference;

.field private final mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    new-instance p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settingslib/widget/R$string;->switch_on_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mOnText:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/widget/R$string;->switch_off_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mOffText:Ljava/lang/String;

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

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AsusresMainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->updatePreference()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSupportOneHandedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->getNavigationBarMode(Landroid/content/Context;)I

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onChange(Landroid/net/Uri;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTapsAppToExitEnabled(Landroid/content/Context;Z)Z

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    .line 71
    invoke-virtual {v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->getValue()I

    move-result v2

    .line 70
    invoke-static {v1, v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTimeoutValue(Landroid/content/Context;I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setOneHandedModeEnabled(Landroid/content/Context;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->updatePreference()V

    return v0
.end method

.method public updatePreference()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mPreference:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mOnText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedMainSwitchPreferenceController;->mOffText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

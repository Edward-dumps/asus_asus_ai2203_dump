.class public Lcom/android/settings/gestures/PreventRingingParentPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "PreventRingingParentPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field static final KEY_CHORD_POWER_VOLUME_UP_MUTE_TOGGLE:I = 0x1


# instance fields
.field final SECURE_KEY:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mSettingObserver:Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p1, "volume_hush_gesture"

    .line 49
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->SECURE_KEY:Ljava/lang/String;

    return-void
.end method

.method private isVolumePowerKeyChordSetToHush()Z
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "config_keyChordPowerVolumeUp"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 167
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string v1, "key_chord_power_volume_up"

    .line 165
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    .line 62
    new-instance p1, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingParentPreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_volumeHushGestureEnabled"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->isVolumePowerKeyChordSetToHush()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "config_longPressOnPowerForAssistantSettingAvailable"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 130
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    return v1
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
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->isVolumePowerKeyChordSetToHush()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 85
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_hush_gesture"

    const/4 v2, 0x1

    .line 94
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->isVolumePowerKeyChordSetToHush()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_ringing_option_mute_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_ringing_option_vibrate_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_ringing_option_unavailable_lpp_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 114
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 117
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

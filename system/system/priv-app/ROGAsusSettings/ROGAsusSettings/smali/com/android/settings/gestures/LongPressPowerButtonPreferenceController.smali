.class public Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "LongPressPowerButtonPreferenceController.java"


# static fields
.field private static final ASSIST_SWITCH_KEY:Ljava/lang/String; = "gesture_power_menu_long_press_for_assist"

.field private static final FOOTER_HINT_KEY:Ljava/lang/String; = "power_menu_power_volume_up_hint"

.field private static KEY_CHORD_POWER_VOLUME_UP_DEFAULT_VALUE_RESOURCE:I = 0x0

.field static final KEY_CHORD_POWER_VOLUME_UP_GLOBAL_ACTIONS:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_CHORD_POWER_VOLUME_UP_MUTE_TOGGLE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_CHORD_POWER_VOLUME_UP_NO_ACTION:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_CHORD_POWER_VOLUME_UP_SETTING:Ljava/lang/String; = "key_chord_power_volume_up"

.field static final LONG_PRESS_POWER_ASSISTANT_VALUE:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LONG_PRESS_POWER_NO_ACTION:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static POWER_BUTTON_LONG_PRESS_DEFAULT_VALUE_RESOURCE:I = 0x0

.field private static final POWER_BUTTON_LONG_PRESS_SETTING:Ljava/lang/String; = "power_button_long_press"


# instance fields
.field mAssistSwitch:Landroidx/preference/Preference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mFooterHint:Landroidx/preference/Preference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p2, "config_longPressOnPowerBehavior"

    const-string v0, "integer"

    const-string v1, "android"

    invoke-virtual {p0, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->POWER_BUTTON_LONG_PRESS_DEFAULT_VALUE_RESOURCE:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "config_keyChordPowerVolumeUp"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->KEY_CHORD_POWER_VOLUME_UP_DEFAULT_VALUE_RESOURCE:I

    return-void
.end method

.method private getPowerButtonValue()I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->POWER_BUTTON_LONG_PRESS_DEFAULT_VALUE_RESOURCE:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string v1, "power_button_long_press"

    .line 169
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static isPowerMenuKeyChordEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "config_keyChordPowerVolumeUp"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 177
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string v1, "key_chord_power_volume_up"

    .line 175
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refreshStateDisplay()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mAssistSwitch:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mFooterHint:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->power_menu_power_volume_up_hint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_volumeHushGestureEnabled"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->power_menu_power_prevent_ringing_hint:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mFooterHint:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mFooterHint:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->isPowerMenuKeyChordEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method private setPowerLongPressValue(Z)Z
    .locals 3

    const/4 v0, 0x5

    const-string v1, "power_button_long_press"

    if-eqz p1, :cond_0

    .line 185
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->POWER_BUTTON_LONG_PRESS_DEFAULT_VALUE_RESOURCE:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private setPowerVolumeChordValue(Z)Z
    .locals 2

    const-string v0, "key_chord_power_volume_up"

    if-eqz p1, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->KEY_CHORD_POWER_VOLUME_UP_DEFAULT_VALUE_RESOURCE:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 217
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "power_menu_power_volume_up_hint"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mFooterHint:Landroidx/preference/Preference;

    const-string v0, "gesture_power_menu_long_press_for_assist"

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->mAssistSwitch:Landroidx/preference/Preference;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->refreshStateDisplay()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_longPressOnPowerForAssistantSettingAvailable"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 122
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

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
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->getPowerButtonValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->power_menu_summary_long_press_for_assist_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->power_menu_summary_long_press_for_assist_disabled_with_power_menu:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->power_menu_summary_long_press_for_assist_disabled_no_action:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->getPowerButtonValue()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->setPowerLongPressValue(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->setPowerVolumeChordValue(Z)Z

    .line 140
    invoke-direct {p0}, Lcom/android/settings/gestures/LongPressPowerButtonPreferenceController;->refreshStateDisplay()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.class public Lcom/android/settings/analytics/SoundVibrationStateTracker;
.super Lcom/android/settings/analytics/CurrentStateTracker;
.source "SoundVibrationStateTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/CurrentStateTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private collectAudioWizard()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_key_audio_wizard_summary"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "state"

    .line 91
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AudioWizard"

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectChargingSound()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ChargingSound"

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectCompleteMute()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mute_media_in_silent_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CompleteMute"

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectDialpadSound()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DialpadSound"

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectMedia()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_media_resumption"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "qs_media_recommend"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PinMediaPlayer"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShowMediaReCommend"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Media"

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectOutdoorModeState()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/android/settings/Utils;->isIN()Z

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_outdoor_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OutdoorMode"

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectPriorityMode()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_priority_mode_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PriorityMode"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectScreenLockingSound()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ScreenLockSound"

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectShortcutPreventRing()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_hush_gesture"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 110
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    const-string v3, "switch"

    .line 111
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PriorityMode"

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectTouchSound()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TouchSound"

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectVibrateOnTouch()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VibrateOnTouch"

    .line 175
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectVolumeKeyCtl()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_volume_key_stream_db"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "state"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VolumeKeyControl"

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected invoke()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectOutdoorModeState()V

    .line 26
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectCompleteMute()V

    .line 29
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectVolumeKeyCtl()V

    .line 30
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectMedia()V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectAudioWizard()V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectPriorityMode()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectShortcutPreventRing()V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectDialpadSound()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectScreenLockingSound()V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectChargingSound()V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectTouchSound()V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/analytics/SoundVibrationStateTracker;->collectVibrateOnTouch()V

    return-void
.end method

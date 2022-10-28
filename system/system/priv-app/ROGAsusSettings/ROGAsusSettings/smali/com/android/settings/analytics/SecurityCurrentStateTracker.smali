.class public Lcom/android/settings/analytics/SecurityCurrentStateTracker;
.super Lcom/android/settings/analytics/CurrentStateTracker;
.source "SecurityCurrentStateTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/CurrentStateTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private collectAsusMusicCover()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_music_cover"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsusMusicCover"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "asus_music_cover"

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectBigClockSwitch()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_big_clock_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/android/settings/Utils;->isGamingFone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "asus_big_clock_enable"

    .line 133
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "switch_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "asus_big_clock_switch"

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectFodAnimationType()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result v0

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    sget-object v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    aget-object v0, v2, v0

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fod_animation"

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectFodEnrollTime()V
    .locals 6

    .line 114
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fod_enroll_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    div-int/lit8 v3, v0, 0x5

    .line 118
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "second"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "~"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "interval"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private collectFodIndicatorType()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result v0

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    sget-object v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    aget-object v0, v2, v0

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fod_indicator"

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectLockAfterTimeout()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "never"

    goto :goto_0

    .line 74
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "lockTime"

    .line 78
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lock_after_timeout"

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectLockScreenShortcut()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_lockscreen_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "asus_lockscreen_wallet_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "shortCutChoose"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "walletEnable"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "secure_asus_lockscreen_shortcut"

    .line 62
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectLockType()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_secure_lock_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "lockType"

    .line 46
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen_lock_type"

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected invoke()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectLockType()V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectLockAfterTimeout()V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectAsusMusicCover()V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectLockScreenShortcut()V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectFodIndicatorType()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectFodAnimationType()V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectFodEnrollTime()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;->collectBigClockSwitch()V

    return-void
.end method

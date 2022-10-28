.class public Lcom/android/settings/analytics/PhoneCurrentStateTracker;
.super Lcom/android/settings/analytics/CurrentStateTracker;
.source "PhoneCurrentStateTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/CurrentStateTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private collectCallRecording()V
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "button_call_recording_notification_key"

    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "call_recording_notification"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button_auto_call_recording_settings_key"

    .line 28
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "auto_call_recording_settings"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button_auto_record_settings_key"

    .line 31
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "auto_record_settings"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button_call_recording_unknown_numbers_key"

    .line 34
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "call_recording_unknown_numbers"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "call_recording"

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected invoke()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/analytics/PhoneCurrentStateTracker;->collectCallRecording()V

    return-void
.end method

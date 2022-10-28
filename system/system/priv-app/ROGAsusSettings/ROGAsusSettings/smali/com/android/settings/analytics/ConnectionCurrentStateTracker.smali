.class public Lcom/android/settings/analytics/ConnectionCurrentStateTracker;
.super Lcom/android/settings/analytics/CurrentStateTracker;
.source "ConnectionCurrentStateTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/CurrentStateTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private collectDynamicCodecSwitch()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "bt_low_latency_switch"

    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected invoke()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/analytics/ConnectionCurrentStateTracker;->collectDynamicCodecSwitch()V

    return-void
.end method

.class public Lcom/android/settings/display/SmartReadingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SmartReadingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field public static final FEATURE_ASUS_SMART_READING:Ljava/lang/String; = "asus.software.smart.reading"

.field public static final KEY_SMART_READING:Ljava/lang/String; = "smart_reading"

.field private static final TAG:Ljava/lang/String; = "SmartReadingController"

.field private static prefs:Landroid/content/SharedPreferences;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingObserver:Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "suggestion_complete_pref"

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/android/settings/display/SmartReadingPreferenceController;->prefs:Landroid/content/SharedPreferences;

    .line 53
    iput-object p1, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isSmartReadingAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "asus.software.smart.reading"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "suggestion_complete_pref"

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/SmartReadingPreferenceController;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "fisrt_smart_reading"

    .line 104
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/display/SmartReadingPreferenceController;->isSmartReadingAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

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

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "smart_reading"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mSettingObserver:Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;-><init>(Lcom/android/settings/display/SmartReadingPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mSettingObserver:Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/SmartReadingPreferenceController;->isSmartReadingAvailable(Landroid/content/Context;)Z

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "smart_reading"

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

    .line 113
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "smart_reading"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 134
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 135
    sget-object p2, Lcom/android/settings/display/SmartReadingPreferenceController;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "fisrt_smart_reading"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 136
    sget-object p2, Lcom/android/settings/display/SmartReadingPreferenceController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onPreferenceChange"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SmartReadingController"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p2, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.asus.intent.smartreading.SWITCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "switch_on"

    .line 140
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.asus.smartreading"

    .line 142
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 139
    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "smart_reading"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 67
    sget-object p1, Lcom/android/settings/display/SmartReadingPreferenceController$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mSettingObserver:Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mSettingObserver:Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;

    if-eqz p1, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/display/SmartReadingPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_reading"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setChecked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmartReadingController"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/settings/display/SmartReadingPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.asus.intent.smartreading.SWITCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "switch_on"

    .line 124
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    .line 125
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.asus.smartreading"

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.class public Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AirTriggerApkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final ACTION_AIR_TRIGGER_OFF:Ljava/lang/String; = "com.asus.airtriggers.SYSTEMUI_AIR_TRIGGER_OFF"

.field private static final ACTION_AIR_TRIGGER_ON:Ljava/lang/String; = "com.asus.airtriggers.SYSTEMUI_AIR_TRIGGER_ON"

.field private static final ACTION_START_AIRTRIGGER_SETTINGS:Ljava/lang/String; = "asus.intent.action.AIRTRIGGER"

.field private static final AIRTRIGGER_PACKAGE_NAME:Ljava/lang/String; = "com.asus.airtriggers"

.field private static final FIELD_AIR_TRIGGER_ENABLE:Ljava/lang/String; = "air_trigger_enable"

.field public static final KEY_AIRTRIGGER:Ljava/lang/String; = "grip_sensor_apk"

.field private static final TAG:Ljava/lang/String; = "AirTriggerApkPreferenceController"


# instance fields
.field private mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mSettingObserver:Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->getSensorState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->handleStateChanged(Z)V

    return-void
.end method

.method private getSensorState()Z
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "air_trigger_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private handleStateChanged(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public static isAirTriggerExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.airtriggers"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 138
    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirTrigger apk not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AirTriggerApkPreferenceController"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private notifySwitchState(Z)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySwitchState enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirTriggerApkPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "com.asus.airtriggers.SYSTEMUI_AIR_TRIGGER_ON"

    goto :goto_0

    :cond_0
    const-string p1, "com.asus.airtriggers.SYSTEMUI_AIR_TRIGGER_OFF"

    .line 167
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.asus.airtriggers"

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static startAirTriggerSettings(Landroid/content/Context;)V
    .locals 3

    .line 147
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.intent.action.AIRTRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.asus.airtriggers"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirTrigger apk activity not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AirTriggerApkPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "grip_sensor_apk"

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mSettingObserver:Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;-><init>(Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mSettingObserver:Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->isAirTriggerExist(Landroid/content/Context;)Z

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

    const-string p0, "grip_sensor_apk"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mSettingObserver:Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->notifySwitchState(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->startAirTriggerSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->getSensorState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->handleStateChanged(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mAirTriggerPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController;->mSettingObserver:Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/asusadvancedsettings/AirTriggerApkPreferenceController$SettingObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

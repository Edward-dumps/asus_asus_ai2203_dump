.class public Lcom/android/settings/display/AsusAlwaysOnPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AsusAlwaysOnPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final MY_USER:I


# instance fields
.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mNotUse:Z

.field private mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mNotUse:Z

    .line 57
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    :cond_0
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Lcom/android/settings/widget/PrimarySwitchPreference;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mNotUse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static startAlwaysOnSettings(Landroid/content/Context;)V
    .locals 2

    .line 103
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.alwayson.action.ALWAYSON_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.asus.alwayson"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Always on APP not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusAlwaysOnPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 82
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "always_on_panel"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "settings_aod_display_option"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->startAlwaysOnSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 172
    sget-object p1, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 200
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 174
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance p2, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/AsusAlwaysOnPreferenceController$1;-><init>(Lcom/android/settings/display/AsusAlwaysOnPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 114
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object v0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    .line 117
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doze_always_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 118
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_9

    if-nez v1, :cond_1

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->settings_enable_alwayson_title_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_aod_display_option"

    const/4 v4, -0x1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_settings_tap_to_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_settings_scheduler_by_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_settings_scheduler_always:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->settings_enable_alwayson_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->settings_enable_alwayson_title_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 152
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->getAlwaysOn()I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/display/AsusAlwaysOnPreferenceController;->mNotUse:Z

    if-nez v0, :cond_8

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->settings_enable_alwayson_title_off:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 154
    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 156
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_2

    .line 159
    :cond_8
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 160
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    :cond_9
    :goto_2
    return-void
.end method

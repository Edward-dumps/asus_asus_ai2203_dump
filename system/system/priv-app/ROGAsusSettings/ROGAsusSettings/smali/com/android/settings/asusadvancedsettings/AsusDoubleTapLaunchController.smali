.class public Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusDoubleTapLaunchController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final ACTION_START_BACKTAP_SETTINGS:Ljava/lang/String; = "asus.intent.action.BACKTAP_SETTINGS"

.field private static final ASUSBACKTAP_PACKAGE_NAME:Ljava/lang/String; = "com.asus.asusbacktap"

.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DONGLE_TYPE_INBOX6:I = 0x8

.field public static KEY_DOUBLE_TAP_ENABLE:Ljava/lang/String; = "key_provider_asus_double_launch_enable"

.field public static KEY_DOUBLE_TAP_OPTION:Ljava/lang/String; = "key_provider_asus_double_launch_option"

.field public static final REDDOT:Ljava/lang/String; = "reddot"

.field private static final TAG:Ljava/lang/String; = "AsusDoubleTapLaunchController"

.field public static final TYPE_DEFAULT:I = 0x1

.field private static final isAvailable:Z


# instance fields
.field private DOUBLE_TAP_LAUNCH_SUMMARY:[I

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$LEYONE2DlhFuw9lezs9TZ0EH0zM(Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->lambda$updateState$0(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan30()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isZenfone9()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->isAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x7

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput v0, p2, v0

    .line 57
    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_screenshot_title:I

    const/4 v1, 0x1

    aput v0, p2, v1

    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_open_camera_title:I

    const/4 v1, 0x2

    aput v0, p2, v1

    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_flash_light_title:I

    const/4 v1, 0x3

    aput v0, p2, v1

    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_recorder_title:I

    const/4 v1, 0x4

    aput v0, p2, v1

    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_google_assistant_title:I

    const/4 v1, 0x5

    aput v0, p2, v1

    sget v0, Lcom/android/settings/R$string;->asus_double_tap_launch_multi_media_title:I

    const/4 v1, 0x6

    aput v0, p2, v1

    iput-object p2, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->DOUBLE_TAP_LAUNCH_SUMMARY:[I

    .line 74
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    .line 76
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;)Lcom/android/settingslib/RestrictedPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-object p0
.end method

.method public static isAsusBackTapExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.asusbacktap"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 88
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

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsusBackTap apk not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AsusDoubleTapLaunchController"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 0

    .line 195
    sget-boolean p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->isAvailable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateState$0(Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    .line 185
    check-cast p0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->setReddot(Z)V

    return-void
.end method

.method public static setDBEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1

    .line 133
    sget-object v0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->KEY_DOUBLE_TAP_ENABLE:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->isAsusBackTapExist(Landroid/content/Context;)Z

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

.method public getType(Landroid/content/ContentResolver;)I
    .locals 1

    .line 190
    sget-object p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->KEY_DOUBLE_TAP_OPTION:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
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

.method public isDBEnabled(Landroid/content/ContentResolver;)Z
    .locals 1

    .line 128
    sget-object p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->KEY_DOUBLE_TAP_ENABLE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->setDBEnabled(Landroid/content/ContentResolver;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "reddot"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "asus.intent.action.BACKTAP_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.asus.asusbacktap"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x14000000

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 111
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AsusBackTap apk activity not found exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusDoubleTapLaunchController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$1;-><init>(Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mObserver:Landroid/database/ContentObserver;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->KEY_DOUBLE_TAP_ENABLE:Ljava/lang/String;

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->KEY_DOUBLE_TAP_OPTION:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mObserver:Landroid/database/ContentObserver;

    .line 150
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    .line 163
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->dongleType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 166
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    .line 167
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 168
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v3, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->asus_double_tap_incompatible_with_cooler_tip:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->asus_category_aero_active:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 171
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p0, v1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->isDBEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mCr:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->getType(Landroid/content/ContentResolver;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->DOUBLE_TAP_LAUNCH_SUMMARY:[I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 183
    :goto_0
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "reddot"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapLaunchController$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

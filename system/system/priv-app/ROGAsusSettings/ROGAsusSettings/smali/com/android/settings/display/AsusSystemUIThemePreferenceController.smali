.class public Lcom/android/settings/display/AsusSystemUIThemePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusSystemUIThemePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final ASUS_SYSTEM_COLOR_CLASS_NAME:Ljava/lang/String; = "com.asus.systemcolor.SystemColorActivity"

.field private static final ASUS_SYSTEM_COLOR_PACKAGE_NAME:Ljava/lang/String; = "com.asus.systemcolor"

.field private static final TAG:Ljava/lang/String; = "AsusSystemUITheme"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

.field private mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

.field private mNotUse:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Lcom/android/settings/widget/AsusSystemUIThemePreference;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;

.field private mUiModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public static synthetic $r8$lambda$f146m9cOlC5Vb3fIUhZESnZpjuQ(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 63
    iput-boolean p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mNotUse:Z

    .line 65
    new-instance p2, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$1;-><init>(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 83
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    new-instance p2, Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    .line 85
    new-instance p2, Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    .line 87
    new-instance p1, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Lcom/android/settings/widget/AsusSystemUIThemePreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPreference:Lcom/android/settings/widget/AsusSystemUIThemePreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mNotUse:Z

    return p1
.end method

.method public static isAsusSystemUISupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.systemcolor"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 175
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asus System Theme apk not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AsusSystemUITheme"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isCarMode()Z
    .locals 1

    .line 334
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDeskMode()Z
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->updateSummary(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPreference:Lcom/android/settings/widget/AsusSystemUIThemePreference;

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private static startAsusSystemUISettings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.asus.systemcolor"

    .line 184
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.systemcolor.SystemColorActivity"

    .line 185
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sus System Theme ActivityNotFoundException not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusSystemUITheme"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateSummary(ZZ)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 208
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_on:I

    goto :goto_0

    .line 209
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_off:I

    .line 210
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->system_theme_summary_theme:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const-string v0, "/"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 222
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    .line 223
    sget v4, Lcom/android/settings/R$string;->asus_dark_ui_summary_on_auto_mode_auto:I

    goto :goto_1

    .line 224
    :cond_3
    sget v4, Lcom/android/settings/R$string;->asus_dark_ui_summary_off_auto_mode_auto:I

    .line 222
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    .line 226
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_on:I

    goto :goto_2

    .line 227
    :cond_4
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_off:I

    :goto_2
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 225
    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    if-eqz p2, :cond_6

    .line 230
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object p1

    goto :goto_3

    .line 231
    :cond_6
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object p1

    .line 232
    :goto_3
    iget-object v4, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v4, p1}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    .line 233
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_7

    .line 234
    sget v5, Lcom/android/settings/R$string;->asus_dark_ui_summary_on_auto_mode_custom:I

    goto :goto_4

    .line 235
    :cond_7
    sget v5, Lcom/android/settings/R$string;->asus_dark_ui_summary_off_auto_mode_custom:I

    :goto_4
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 233
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_8

    .line 237
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_on:I

    goto :goto_5

    .line 238
    :cond_8
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_off:I

    :goto_5
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    .line 236
    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 241
    :cond_9
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_a

    .line 242
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_on:I

    goto :goto_6

    .line 243
    :cond_a
    sget p2, Lcom/android/settings/R$string;->asus_dark_ui_summary_off:I

    :goto_6
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 241
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 247
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->getTheme()I

    move-result p2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_b

    iget-boolean p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mNotUse:Z

    if-nez p2, :cond_b

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->asus_dark_ui_summary_on:I

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 249
    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    return-object p1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AsusSystemUIThemePreference;

    iput-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPreference:Lcom/android/settings/widget/AsusSystemUIThemePreference;

    if-eqz p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPreference:Lcom/android/settings/widget/AsusSystemUIThemePreference;

    invoke-direct {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->isDeskMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 168
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 166
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/AsusSystemUIThemePreference;->setEnabledAppearance(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->isAsusSystemUISupport(Landroid/content/Context;)Z

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

    .line 198
    iget-object v0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->updateSummary(ZZ)Ljava/lang/String;

    move-result-object p0

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->startAsusSystemUISettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 107
    sget-object p1, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    iget-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/android/settings/display/darkmode/DarkModeObserver;->subscribe(Ljava/lang/Runnable;)V

    .line 124
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance p2, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController$2;-><init>(Lcom/android/settings/display/AsusSystemUIThemePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mUiModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mDarkModeObserver:Lcom/android/settings/display/darkmode/DarkModeObserver;

    invoke-virtual {p1}, Lcom/android/settings/display/darkmode/DarkModeObserver;->unsubscribe()V

    .line 111
    iget-object p1, p0, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

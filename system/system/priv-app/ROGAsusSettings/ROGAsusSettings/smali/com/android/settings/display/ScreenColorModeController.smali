.class public Lcom/android/settings/display/ScreenColorModeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ScreenColorModeController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenColorMode:I

.field private mScreenColorModeScreen:Landroidx/preference/Preference;

.field private mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

.field private mSplendidRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/ScreenColorModeController;)Landroidx/preference/Preference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/ScreenColorModeController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/ScreenColorModeController;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/display/ScreenColorModeController;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorMode:I

    return p1
.end method

.method private getSplendidRes()Landroid/content/res/Resources;
    .locals 2

    .line 164
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.asus.splendid"

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load splendid resource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenColorMode"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private updateEnabledStatus()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.splendid"

    invoke-static {v0, v1}, Lcom/android/settings/display/ScreenColorModeController;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateScreenColorModeTitle()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mSplendidRes:Landroid/content/res/Resources;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "asus_splendid_screen_mode_current_res_id"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/settings/display/ScreenColorModeController;->mSplendidRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mSplendidRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 207
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 209
    :cond_2
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->splendid_balance_mode_text:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenColorModeController;->isAvailable()Z

    move-result v0

    const-string v1, "screen_color_mode"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorModeController;->getSplendidRes()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mSplendidRes:Landroid/content/res/Resources;

    .line 77
    new-instance p1, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    iget-object v0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;-><init>(Lcom/android/settings/display/ScreenColorModeController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    .line 78
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorModeScreen:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/display/ScreenColorModeController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenColorModeController$1;-><init>(Lcom/android/settings/display/ScreenColorModeController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorModeController;->updateEnabledStatus()V

    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "screen_color_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    const-string v0, "com.asus.splendid"

    invoke-static {p0, v0}, Lcom/android/settings/display/ScreenColorModeController;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 126
    sget-object p1, Lcom/android/settings/display/ScreenColorModeController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorModeController;->updateEnabledStatus()V

    .line 134
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    if-eqz p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "asus_splendid_screen_mode_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenModeOptionObserver:Lcom/android/settings/display/ScreenColorModeController$ScreenModeOptionObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "asus_splendid_screen_mode_option"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenColorModeController;->mScreenColorMode:I

    .line 121
    invoke-direct {p0}, Lcom/android/settings/display/ScreenColorModeController;->updateScreenColorModeTitle()V

    return-void
.end method

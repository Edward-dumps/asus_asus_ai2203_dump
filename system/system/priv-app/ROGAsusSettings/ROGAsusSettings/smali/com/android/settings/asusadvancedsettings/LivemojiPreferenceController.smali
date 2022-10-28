.class public Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LivemojiPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mLivemojiPreference:Landroidx/preference/Preference;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController$1;-><init>(Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->startZenimojiSettings(Landroid/content/Context;)V

    return-void
.end method

.method public static isLivemojiExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.zenimoji"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 80
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

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Livemoji not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LivemojiPreferenceController"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static startZenimojiSettings(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.asus.zenimoji"

    .line 89
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10008000

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.asus.zenimoji.settings.SettingsActivity"

    .line 91
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "livemoji_settings"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->mLivemojiPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "livemoji_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/LivemojiPreferenceController;->isLivemojiExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isIN()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

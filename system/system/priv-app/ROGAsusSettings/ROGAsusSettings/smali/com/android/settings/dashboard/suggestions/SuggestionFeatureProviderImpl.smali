.class public Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public getContextualSuggestionFragment()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "suggestions"

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSuggestionServiceComponent()Landroid/content/ComponentName;
    .locals 2

    .line 70
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings.intelligence"

    const-string v1, "com.android.settings.intelligence.suggestions.SuggestionService"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 78
    const-class p2, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    invoke-static {p1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 80
    :cond_0
    const-class p2, Lcom/android/settings/wallpaper/StyleSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-static {p1}, Lcom/android/settings/wallpaper/StyleSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 82
    :cond_1
    const-class p2, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 83
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 84
    :cond_2
    const-class p2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 85
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 86
    :cond_3
    const-class p2, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 87
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 88
    :cond_4
    const-class p2, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 89
    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 90
    :cond_5
    const-class p2, Lcom/android/settings/Settings$NightDisplaySuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 91
    invoke-static {p1}, Lcom/android/settings/display/NightDisplayPreferenceController;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 92
    :cond_6
    const-class p2, Lcom/android/settings/notification/zen/ZenSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 93
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 94
    :cond_7
    const-class p2, Lcom/android/settings/biometrics/asusfacelock/FaceLockSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 95
    invoke-static {p1}, Lcom/android/settings/biometrics/asusfacelock/FaceLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 96
    :cond_8
    const-class p2, Lcom/android/settings/Settings$SmartReadingSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 97
    invoke-static {p1}, Lcom/android/settings/display/SmartReadingPreferenceController;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 98
    :cond_9
    const-class p2, Lcom/android/settings/Settings$SmartFontSizeSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 99
    invoke-static {p1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 100
    :cond_a
    const-class p2, Lcom/android/settings/Settings$ChangeFontSizeAndScreenZoomSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 101
    invoke-static {p1}, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 102
    :cond_b
    const-class p2, Lcom/android/settings/Settings$LocalBackupSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 103
    invoke-static {p1}, Lcom/android/settings/localbackup/LocalBackupFragment;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 104
    :cond_c
    const-class p2, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 105
    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/AsusDoubleTapSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 106
    :cond_d
    const-class p2, Lcom/android/settings/notification/DisplayNotificationIconSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 107
    invoke-static {p1}, Lcom/android/settings/notification/DisplayNotificationIconSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 108
    :cond_e
    const-class p2, Lcom/android/settings/security/AsusLockScreenShortcutSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 109
    invoke-static {p1}, Lcom/android/settings/security/AsusLockScreenShortcutSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 110
    :cond_f
    const-class p2, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 111
    invoke-static {p1}, Lcom/android/settings/fuelgauge/ScheduledChargingSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

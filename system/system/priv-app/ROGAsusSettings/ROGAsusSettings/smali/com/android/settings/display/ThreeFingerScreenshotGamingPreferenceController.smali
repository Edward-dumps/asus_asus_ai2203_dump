.class public Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ThreeFingerScreenshotGamingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final KEY_PREFERENCES:Ljava/lang/String; = "toggle_tfs_allow_gaming"

.field private static final SIDE_KEY_PACKAGE_NAME:Ljava/lang/String; = "com.asus.smartkey"

.field private static final TAG:Ljava/lang/String; = "ThreeFingerScreenshotGamingPreferenceController"

.field private static mSettingsKeyName:Ljava/lang/String; = "asus_three_finger_screenshot"


# instance fields
.field private final ENABLE_THREE_FINGER_SCREENSHOT_IN_GAMING:Ljava/lang/String;

.field private final ENABLE_THREE_FINGER_SCREENSHOT_IN_GAMING_SHOW:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "asus_three_finger_screenshot_in_game_show"

    .line 54
    iput-object p2, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->ENABLE_THREE_FINGER_SCREENSHOT_IN_GAMING_SHOW:Ljava/lang/String;

    const-string p2, "asus_three_finger_screenshot_in_game"

    .line 55
    iput-object p2, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->ENABLE_THREE_FINGER_SCREENSHOT_IN_GAMING:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_three_finger_screenshot_in_game_show"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    return v1
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

    const-string p0, "toggle_tfs_allow_gaming"

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

    .line 70
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_three_finger_screenshot_in_game"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;-><init>(Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mObserver:Landroid/database/ContentObserver;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mSettingsKeyName:Ljava/lang/String;

    .line 117
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 116
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_three_finger_screenshot_in_game"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "asus_three_finger_screenshot"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 96
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

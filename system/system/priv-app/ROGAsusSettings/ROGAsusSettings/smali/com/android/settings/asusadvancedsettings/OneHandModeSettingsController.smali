.class public Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "OneHandModeSettingsController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;
    }
.end annotation


# static fields
.field public static final FEATURE_ASUS_ONEHAND_GESTURE:Ljava/lang/String; = "asus.software.onehand.gesture"

.field private static final FEATURE_ASUS_WHOLE_SYSTEM_ONEHAND:Ljava/lang/String; = "asus.software.whole_system_onehand"

.field public static final KEY_PREFERENCES:Ljava/lang/String; = "gesture_one_handed"

.field public static final ONE_HAND_DEFAULT_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OneHandModeSettingsController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field mDashboardFragment:Lcom/android/settings/asusadvancedsettings/AsusAdvancedSettingsDashboardFragment;

.field mOneHandModeListener:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;

.field private mOneHandModeObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/Preference;

.field private mSettingsKeyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;)V
    .locals 1

    const-string v0, "gesture_one_handed"

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 74
    :cond_0
    iput-object p3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeListener:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "one_handed_mode_enabled"

    .line 65
    iput-object p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mSettingsKeyName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;)Landroidx/preference/Preference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static isOneHandCtrlEnable(Landroid/content/Context;)Z
    .locals 0

    .line 153
    invoke-static {}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSupportOneHandedMode()Z

    move-result p0

    return p0
.end method

.method private onStart()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$1;-><init>(Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeObserver:Landroid/database/ContentObserver;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mSettingsKeyName:Ljava/lang/String;

    .line 113
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 112
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private onStop()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
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

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->isOneHandCtrlEnable(Landroid/content/Context;)Z

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

    const-string p0, "gesture_one_handed"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 91
    sget-object p1, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->onStart()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->onStop()V

    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mOneHandModeListener:Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;

    invoke-interface {v0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController$OneHandModeListener;->onOneHandModeChange(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTapsAppToExitEnabled(Landroid/content/Context;Z)Z

    .line 139
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    .line 140
    invoke-virtual {v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->getValue()I

    move-result v2

    .line 139
    invoke-static {v1, v2}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTimeoutValue(Landroid/content/Context;I)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setOneHandedModeEnabled(Landroid/content/Context;Z)V

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 145
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {p1, v1, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 146
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeSettingsController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {p0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_1
    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

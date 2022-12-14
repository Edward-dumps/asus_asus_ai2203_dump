.class public Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OneHandedActionPullDownPrefController.java"

# interfaces
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method public static synthetic $r8$lambda$2vieQPCpJR7WxwyhyTYMx-yTmZc(Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->lambda$displayPreference$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mPreference:Landroidx/preference/Preference;

    .line 79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.asusadvancedsettings.OneHandModeRegularShiftActivity"

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    new-instance v1, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/RadioButtonPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSupportOneHandedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->canEnableController(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setSwipeDownNotificationEnabled(Landroid/content/Context;Z)V

    .line 69
    instance-of p0, p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 70
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return v0
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

.method public onChange(Landroid/net/Uri;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->SHORTCUT_ENABLED_URI:Landroid/net/Uri;

    .line 100
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->SHOW_NOTIFICATION_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->canEnableController(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedActionPullDownPrefController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 50
    instance-of v0, p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSwipeDownNotificationEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 51
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

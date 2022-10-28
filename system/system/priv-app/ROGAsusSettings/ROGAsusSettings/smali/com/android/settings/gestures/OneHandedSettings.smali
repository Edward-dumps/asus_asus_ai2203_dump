.class public Lcom/android/settings/gestures/OneHandedSettings;
.super Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.source "OneHandedSettings.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private APPBAR_STATE:Ljava/lang/String;

.field private SWITCH_CHANGED:Ljava/lang/String;

.field private isSwitchChanged:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mExpand:Ljava/lang/String;

.field private mFeatureName:Ljava/lang/String;

.field protected mSensitivePreference:Landroidx/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;


# direct methods
.method public static synthetic $r8$lambda$B988dHRbByA0bHKJH5RjSaNIhAY(Lcom/android/settings/gestures/OneHandedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/gestures/OneHandedSettings;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JX3eSzMHoIdxOF8jb_p0iEHcYaY(Lcom/android/settings/gestures/OneHandedSettings;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/OneHandedSettings;->lambda$onStart$1(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 296
    new-instance v0, Lcom/android/settings/gestures/OneHandedSettings$2;

    sget v1, Lcom/android/settings/R$xml;->one_handed_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/OneHandedSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;-><init>()V

    .line 68
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->COLLAPSED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mExpand:Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->isSwitchChanged:Ljava/lang/Boolean;

    const-string v0, "appbar_state"

    .line 70
    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->APPBAR_STATE:Ljava/lang/String;

    const-string v0, "switch_changed"

    .line 71
    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->SWITCH_CHANGED:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/gestures/OneHandedSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mExpand:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic lambda$onStart$0()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettings;->updatePreferenceStates()V

    return-void
.end method

.method private synthetic lambda$onStart$1(Landroid/net/Uri;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    new-instance v0, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/gestures/OneHandedSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettings;->updatePreference()V

    return-void
.end method

.method private refreshMainSwitch()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 236
    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getDialogMetricsCategory(I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x731

    :cond_0
    return p0
.end method

.method protected getGeneralCategoryDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_advanced_settings_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLabelName()Ljava/lang/CharSequence;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x731

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 246
    sget p0, Lcom/android/settings/R$xml;->one_handed_settings:I

    return p0
.end method

.method protected getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shortcut_preference"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->one_handed_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mFeatureName:Ljava/lang/String;

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 108
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    const-string v2, "one_hand_mode_gesture_sensitivity"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->asus_advanced_settings_onehand_gesture_sensitivity:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 114
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 118
    invoke-virtual {p2}, Lcom/asus/commonresx/widget/MainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitch:Landroid/widget/Switch;

    .line 119
    iget-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p2}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    if-eqz p3, :cond_0

    .line 122
    iget-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings;->APPBAR_STATE:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->SWITCH_CHANGED:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/gestures/OneHandedSettings;->isSwitchChanged:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 125
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;->COLLAPSED:Lcom/android/settings/gestures/OneHandedSettings$AppBarStateChangeListener$State;

    .line 126
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    invoke-virtual {p2, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setDefaultExpended(Z)V

    .line 129
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/settings/gestures/OneHandedSettings;->isSwitchChanged:Ljava/lang/Boolean;

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettings;->updatePreference()V

    .line 135
    iget-object p2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance p3, Lcom/android/settings/gestures/OneHandedSettings$1;

    invoke-direct {p3, p0}, Lcom/android/settings/gestures/OneHandedSettings$1;-><init>(Lcom/android/settings/gestures/OneHandedSettings;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSensitivePreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ONE_HAND_MODE_SENSITIVITY"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->SWITCH_CHANGED:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/gestures/OneHandedSettings;->isSwitchChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->APPBAR_STATE:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mExpand:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 184
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->Style_Update_Divider:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 186
    new-instance v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    .line 187
    new-instance v1, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/gestures/OneHandedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/OneHandedSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTapsAppToExitEnabled(Landroid/content/Context;Z)Z

    .line 202
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->MEDIUM:Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;

    .line 203
    invoke-virtual {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;->getValue()I

    move-result v0

    .line 202
    invoke-static {p1, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setTimeoutValue(Landroid/content/Context;I)V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setOneHandedModeEnabled(Landroid/content/Context;Z)V

    .line 206
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettings;->isSwitchChanged:Ljava/lang/Boolean;

    .line 207
    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method

.method protected showGeneralCategory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updatePreference()V
    .locals 3

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/gestures/OneHandedSettings;->refreshMainSwitch()V

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "one_hand_mode_gesture_sensitivity"

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v1, "shortcut_preference"

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_1

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 220
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    .line 222
    invoke-static {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    :cond_1
    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->setUserId(I)V

    .line 84
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 87
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "one_handed_header"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/IllustrationPreference;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSwipeDownNotificationEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    sget p0, Lcom/android/settings/R$raw;->lottie_swipe_for_notifications:I

    goto :goto_0

    .line 94
    :cond_0
    sget p0, Lcom/android/settings/R$raw;->lottie_one_hand_mode:I

    .line 92
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    :cond_1
    return-void
.end method

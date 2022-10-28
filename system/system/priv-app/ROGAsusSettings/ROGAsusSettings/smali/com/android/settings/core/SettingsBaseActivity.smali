.class public Lcom/android/settings/core/SettingsBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsBaseActivity.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;
.implements Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SettingsBaseActivity$disabledScrollingViewBehavior;
    }
.end annotation


# instance fields
.field protected mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field protected mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field protected mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field protected mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

.field private mToolbar:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    return-void
.end method

.method private disableCollapsingToolbarLayoutScrollingBehavior()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 322
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 323
    new-instance v2, Lcom/android/settings/core/SettingsBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/core/SettingsBaseActivity$1;-><init>(Lcom/android/settings/core/SettingsBaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 330
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method

.method private getTransitionType(Landroid/content/Intent;)I
    .locals 1

    const-string p0, "page_transition_type"

    const/4 v0, -0x1

    .line 334
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isLockTaskModePinned()Z
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 274
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSettingsRunOnTop()Z
    .locals 2

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method protected isToolbarEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isSettingsRunOnTop()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SettingsBaseActivity"

    const-string v0, "Devices lock task mode pinned."

    .line 97
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 p1, 0x1

    .line 102
    invoke-static {p1}, Lcom/google/android/material/resources/TextAppearanceConfig;->setShouldLoadFontSynchronously(Z)V

    .line 104
    invoke-static {p0}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 105
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->loadThemeColorCodeFromProvider(Landroid/content/Context;)V

    .line 107
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;)V

    .line 108
    invoke-static {p0}, Lcom/android/settings/theme/ThemeUtils;->applyThemeForDialog(Landroid/content/Context;)V

    .line 109
    new-instance v0, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {v0, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    .line 110
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-eqz v0, :cond_5

    .line 121
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    sget v0, Lcom/android/settings/R$style;->SudDynamicColorThemeSettings_SetupWizard_DayNight:I

    goto :goto_0

    .line 124
    :cond_2
    sget v0, Lcom/android/settings/R$style;->SudDynamicColorThemeSettings_SetupWizard:I

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    sget v0, Lcom/android/settings/R$style;->SubSettings_SetupWizard:I

    goto :goto_0

    .line 128
    :cond_4
    sget v0, Lcom/android/settings/R$style;->SudThemeGlifV3_Light:I

    .line 130
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 134
    sget v0, Lcom/android/settings/R$layout;->asus_settings_collapsing_toolbar_base_layout:I

    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 135
    sget v0, Lcom/android/settings/R$id;->collapsing_toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 136
    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 137
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_6

    const v1, 0x3f8ccccd    # 1.1f

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    .line 140
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;->disableCollapsingToolbarLayoutScrollingBehavior()V

    goto :goto_1

    .line 142
    :cond_7
    sget v0, Lcom/android/settings/R$layout;->settings_base_layout:I

    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 146
    :goto_1
    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isToolbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_8

    goto :goto_2

    .line 151
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 153
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->setNavigationBar(Landroid/app/Activity;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsBaseApplication;

    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    if-eqz p1, :cond_9

    .line 156
    invoke-virtual {p1, p0}, Lcom/android/settings/SettingsBaseApplication;->addThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V

    .line 161
    :cond_9
    invoke-static {p0}, Lcom/android/settings/Utils;->setImmersiveMode(Landroid/app/Activity;)V

    return-void

    :cond_a
    :goto_2
    const/16 p0, 0x8

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsBaseApplication;->removeThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V

    :cond_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onPause()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->getTransitionType(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    sget v0, Lcom/android/settings/R$anim;->sud_stay:I

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 210
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onThemeChange()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public removeFrameContentScrollingBehaviod()V
    .locals 3

    .line 308
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 309
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 312
    new-instance v1, Lcom/android/settings/core/SettingsBaseActivity$disabledScrollingViewBehavior;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/settings/core/SettingsBaseActivity$disabledScrollingViewBehavior;-><init>(Lcom/android/settings/core/SettingsBaseActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_0
    return-void
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v0, :cond_0

    const-string v0, "SettingsBaseActivity"

    const-string v1, "setActionBar() mActionBar instanceof WindowDecorActionBar"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 173
    :goto_0
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity;->mToolbar:Landroid/widget/Toolbar;

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 226
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 235
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 240
    sget v0, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 5

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v4, p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 294
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin;->removeFromDenylist(Landroid/content/ComponentName;)V

    goto :goto_2

    .line 296
    :cond_3
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin;->addToDenylist(Landroid/content/ComponentName;)V

    :goto_2
    if-eqz p2, :cond_4

    move p0, v3

    goto :goto_3

    :cond_4
    const/4 p0, 0x2

    .line 298
    :goto_3
    invoke-virtual {v0, p1, p0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v3
.end method

.method public setTitle(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->getTransitionType(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No application can handle the intent:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsBaseActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 198
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    const/high16 p1, 0x10a0000

    .line 200
    sget p2, Lcom/android/settings/R$anim;->sud_stay:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    :goto_1
    return-void
.end method

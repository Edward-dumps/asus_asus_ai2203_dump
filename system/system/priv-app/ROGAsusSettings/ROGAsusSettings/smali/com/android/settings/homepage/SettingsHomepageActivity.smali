.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"

# interfaces
.implements Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# instance fields
.field protected isConfigChange:Z

.field private mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field private mHandler:Landroid/os/Handler;

.field private mHomepageView:Landroid/view/View;

.field protected mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

.field private mSuggestionView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$W5QqlM6wnQ_L8Fc1BrhhKlxZTyI(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showSuggestionFragment$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    .line 75
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$1;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    iput-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getSearchBoxHeight()I
    .locals 2

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->asusresx_actionbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$dimen;->search_bar_margin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private initHomepageContainer()V
    .locals 1

    .line 238
    sget v0, Lcom/android/settings/R$id;->homepage_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private synthetic lambda$showSuggestionFragment$0()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showHomepageWithSuggestion(Z)V

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 227
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 230
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 234
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showSuggestionFragment()V
    .locals 6

    .line 204
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    sget v1, Lcom/android/settings/R$id;->suggestion_content:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    .line 211
    sget v2, Lcom/android/settings/R$id;->settings_homepage_container:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    const/16 v3, 0x8

    .line 213
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SettingsHomepageActivity"

    const-string v1, "Cannot show fragment"

    .line 220
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    .line 195
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {p0}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 119
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->Style_Asus_Settings_Home:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 121
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->loadThemeColorCodeFromProvider(Landroid/content/Context;)V

    .line 122
    invoke-static {p0}, Lcom/android/settings/theme/ThemeUtils;->applyThemeForDialog(Landroid/content/Context;)V

    .line 124
    sget p1, Lcom/android/settings/R$layout;->settings_homepage_container:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 126
    sget p1, Lcom/android/settings/R$id;->app_bar_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getSearchBoxHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initHomepageContainer()V

    .line 130
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->setNavigationBar(Landroid/app/Activity;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 132
    sget p1, Lcom/android/settings/R$id;->settings_homepage_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setNestedScrollViewListener(Landroid/view/View;)V

    .line 134
    sget v0, Lcom/android/settings/R$id;->search_action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 135
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    const/16 v2, 0x5de

    .line 136
    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;I)V

    .line 139
    new-instance v1, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {v1, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    .line 140
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 142
    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    sget v1, Lcom/android/settings/R$id;->account_avatar:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    invoke-static {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->isAvatarSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment()V

    .line 153
    new-instance v1, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {v1}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    sget v2, Lcom/android/settings/R$id;->contextual_cards_content:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 156
    :cond_1
    new-instance v1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v1}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    sget v2, Lcom/android/settings/R$id;->main_content:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    .line 157
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 158
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 161
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 163
    invoke-static {p0, p1}, Lcom/android/settingslib/widget/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;)V

    .line 165
    sget p1, Lcom/android/settings/R$id;->homepage_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 167
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :cond_2
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result p1

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p1, v1}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result p1

    .line 170
    invoke-static {v0, p1}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 173
    sget p1, Lcom/android/settings/R$drawable;->ic_homepage_search:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 174
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 180
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsBaseApplication;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    .line 181
    invoke-virtual {p1, p0}, Lcom/android/settings/SettingsBaseApplication;->addThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSettingsApp:Lcom/android/settings/SettingsBaseApplication;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsBaseApplication;->removeThemeSettingChangeListener(Lcom/android/settings/SettingsBaseApplication$IThemeSettingChangedListener;)V

    return-void
.end method

.method public onThemeChange()V
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method setNestedScrollViewListener(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    sget v0, Lcom/android/settings/R$id;->main_content_scrollable_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_1

    .line 257
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$2;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :cond_1
    return-void
.end method

.method public showHomepageWithSuggestion(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showHomepageWithSuggestion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsHomepageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    return-void
.end method

.class public Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandModeRegularShiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneHandModeRegularShiftFragment"
.end annotation


# static fields
.field private static ARROW_IMAGE:I = 0x0

.field private static ARROW_IMAGE_ROG:I = 0x0

.field private static ONE_HAND_MODE_SHIFT_DEFAULT_SETTINGS_REGULAR:F = 0.0f

.field private static TAG:Ljava/lang/String; = "OneHandModeRegularShiftFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mScreenHeight:F

.field private mWindow:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$1BkEZ1XhoXt_cuJeW3gMT2ifzXk(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->lambda$onViewCreated$0(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_regular_shift_arrow:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ARROW_IMAGE:I

    .line 95
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_regular_shift_arrow_rog:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ARROW_IMAGE_ROG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mWindow:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private getPackageContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 299
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 302
    :catch_0
    sget-object p0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$onViewCreated$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    .line 124
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x1000000

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 131
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 133
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    .line 136
    invoke-virtual {v0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 137
    invoke-static {v3, v4}, Lcom/android/settingslib/widget/ThemeUtils;->setLightStatusBar(Landroid/app/Activity;Z)V

    .line 138
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 139
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_2
    const v0, 0x102003f

    move-object/from16 v2, p1

    .line 142
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/android/settings/R$layout;->one_hand_mode_regular_shift:I

    .line 144
    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 147
    iput-object v3, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    .line 148
    sget v0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 149
    sget v0, Lcom/android/settings/R$id;->preview_window:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mWindow:Landroid/widget/LinearLayout;

    .line 150
    sget v0, Lcom/android/settings/R$id;->img_preview:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 151
    iget-object v0, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->isClassicZenUITheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->isHouston()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/settings/R$drawable;->one_hand_mode_regular_shift_preview_2203:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isGamingFone()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/R$drawable;->one_hand_mode_regular_shift_preview_rog:I

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    :cond_4
    :goto_0
    sget v0, Lcom/android/settings/R$id;->img_arrow:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    .line 156
    sget v0, Lcom/android/settings/R$id;->img_back:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 157
    invoke-static {v3, v4}, Lcom/asus/commonres/AsusResUtils;->getAsusResThemeStyle(Landroid/content/Context;Z)I

    move-result v0

    const v10, 0x101030b

    invoke-static {v3, v0, v10}, Lcom/asus/commonres/AsusResTheme;->getAttributeDrawableRes(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    .line 159
    invoke-static {v9, v0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    const-string v0, "com.android.systemui"

    .line 161
    invoke-direct {v1, v0}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->getPackageContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v10

    const-string v12, "dimen"

    if-eqz v10, :cond_5

    .line 170
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "config_oneHand_min_offsetY_ratio"

    invoke-virtual {v13, v14, v12, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 171
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "config_oneHand_max_offsetY_ratio"

    invoke-virtual {v14, v15, v12, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    :try_start_2
    sget-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minOffsetYRatioResId = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "maxOffsetYRatioResId = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v14, v4

    goto :goto_1

    :catch_2
    move-exception v0

    move v13, v4

    move v14, v13

    .line 175
    :goto_1
    sget-object v11, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v13, v4

    move v14, v13

    :goto_2
    const/4 v0, 0x1

    if-lez v13, :cond_6

    .line 179
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 180
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13, v11, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 181
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    .line 182
    sget-object v13, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minYOffsetRatio = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const v11, 0x3e4ccccd    # 0.2f

    :goto_3
    const/high16 v4, 0x3f000000    # 0.5f

    if-lez v14, :cond_7

    .line 186
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 187
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v14, v13, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 188
    invoke-virtual {v13}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 189
    sget-object v10, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "maxYOffsetRatio = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move v0, v4

    .line 191
    :goto_4
    iget-object v10, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;->getScreenHeight(Landroid/content/Context;)F

    move-result v10

    iput v10, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mScreenHeight:F

    mul-float/2addr v11, v10

    mul-float/2addr v10, v0

    .line 196
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    iget v13, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mScreenHeight:F

    float-to-int v13, v13

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 198
    iget-object v13, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v13}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;->getScreenWidth(Landroid/content/Context;)F

    move-result v13

    float-to-int v13, v13

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 199
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v13, "navigation_bar_height"

    const-string v14, "android"

    .line 203
    invoke-virtual {v7, v13, v12, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_8

    .line 205
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    .line 207
    :goto_5
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int v12, v0, v7

    .line 209
    sget-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mScreenHeight= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mScreenHeight:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "naviBarHeight= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v0, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mScreenHeight:F

    mul-float/2addr v0, v4

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ONE_HAND_MODE_SHIFT_DEFAULT_SETTINGS_REGULAR:F

    .line 214
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 215
    sget v4, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ONE_HAND_MODE_SHIFT_DEFAULT_SETTINGS_REGULAR:F

    const-string v7, "accessibility_onehand_ctrl_offsetY"

    invoke-static {v0, v7, v4}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity;->getSecureFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 216
    iget-object v4, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mWindow:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v7, v12

    sub-float/2addr v7, v0

    float-to-int v7, v7

    .line 217
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 218
    iget-object v7, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mWindow:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    sget-object v4, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadPosition= "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v1, v5}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 225
    :try_start_3
    sget-object v0, Lcom/linecorp/apng/ApngDrawable;->Companion:Lcom/linecorp/apng/ApngDrawable$Companion;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isGamingFone()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settingslib/widget/ThemeUtils;->isClassicZenUITheme(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    sget v4, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ARROW_IMAGE_ROG:I

    goto :goto_6

    :cond_9
    sget v4, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->ARROW_IMAGE:I

    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5, v5}, Lcom/linecorp/apng/ApngDrawable$Companion;->decode(Landroid/content/res/Resources;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/linecorp/apng/ApngDrawable;

    move-result-object v0

    .line 226
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    instance-of v2, v0, Lcom/linecorp/apng/ApngDrawable;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, v2}, Lcom/linecorp/apng/ApngDrawable;->setLoopCount(I)V

    .line 229
    invoke-virtual {v0}, Lcom/linecorp/apng/ApngDrawable;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    .line 232
    :try_start_4
    sget-object v2, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :cond_a
    :goto_7
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;

    invoke-direct {v0, v1, v12, v10, v11}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$1;-><init>(Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment;IFF)V

    .line 284
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/android/settings/asusadvancedsettings/OneHandModeRegularShiftActivity$OneHandModeRegularShiftFragment$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 235
    :goto_8
    throw v0
.end method

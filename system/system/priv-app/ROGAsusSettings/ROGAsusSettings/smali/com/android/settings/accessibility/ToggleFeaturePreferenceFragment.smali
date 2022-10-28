.class public abstract Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# instance fields
.field protected mComponentName:Landroid/content/ComponentName;

.field private mDescription:Ljava/lang/CharSequence;

.field protected mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

.field private mHardwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mHtmlDescription:Ljava/lang/CharSequence;

.field private final mImageGetter:Landroid/text/Html$ImageGetter;

.field private mImageGetterCacheView:Landroid/widget/ImageView;

.field protected mImageUri:Landroid/net/Uri;

.field protected mPackageName:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSavedCheckBoxValue:I

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsPreference:Landroidx/preference/Preference;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

.field private mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

.field protected mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method public static synthetic $r8$lambda$Qn29PFxP1Y9MdbAHocjz-kg8Khg(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$setDialogTextAreaClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TkvKvJbpM5BIiKg_luet2RAqDDY(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$new$0(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WdCnBpafpzSK0kqZrACYywywCyU(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->lambda$onCreateView$1(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    .line 117
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    return-void
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 377
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    .line 382
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 383
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetterCacheView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 384
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 385
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result p0

    if-gt v1, p0, :cond_3

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 393
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p1, v1, v1, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private hasShortcutType(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initAnimatedImagePreference()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/IllustrationPreference;->setImageUri(Landroid/net/Uri;)V

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const-string v1, "animated_image"

    .line 407
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 408
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/IllustrationPreference;->setBackgroundType(I)V

    .line 410
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initFooterPreference()V
    .locals 7

    .line 484
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    sget v4, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v6, v5, v1

    .line 486
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->createFooterPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    sget v0, Lcom/android/settings/R$string;->accessibility_service_default_description:I

    .line 491
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    .line 493
    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->createFooterPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initGeneralCategory()V
    .locals 2

    .line 425
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v1, "general_categories"

    .line 426
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 427
    sget v1, Lcom/android/settings/R$string;->accessibility_screen_option:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 429
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initHtmlTextPreference()V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageGetter:Landroid/text/Html$ImageGetter;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    .line 469
    new-instance v2, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    .line 470
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "html_description"

    .line 471
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/FooterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 476
    sget v1, Lcom/android/settings/R$string;->accessibility_introduction_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v3, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 478
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 479
    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private initToggleServiceSwitchPreference()V
    .locals 2

    .line 414
    new-instance v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const-string v1, "use_service"

    .line 415
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchPreferenceToggleSwitch()V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "R.drawable."

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 122
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreateView$1(Z)V
    .locals 1

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setDialogTextAreaClickListener$2(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 534
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    return-void
.end method

.method private restoreOnConfigChangedValue()I
    .locals 2

    .line 555
    iget v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    const/4 v1, -0x1

    .line 556
    iput v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    return v0
.end method

.method private setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0

    .line 533
    sget p0, Lcom/android/settings/R$id;->container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 534
    new-instance p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static setupDefaultShortcutIfNecessary(Landroid/content/Context;)V
    .locals 3

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 705
    invoke-static {p0, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 713
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 716
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private updateEditShortcutDialogCheckBox()V
    .locals 3

    .line 540
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->restoreOnConfigChangedValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v0, v2, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 544
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 548
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 549
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    .line 548
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x2

    .line 551
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    .line 550
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updatePreferenceOrder()V
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceOrderList()Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 364
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 624
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    return-void

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result p1

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->saveNonEmptyUserShortcutType(I)V

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, p1, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    not-int v0, p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 633
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 634
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method createFooterPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .line 508
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    .line 509
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/FooterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 513
    new-instance p2, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 514
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    .line 515
    invoke-virtual {p2, p3}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 516
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 p0, 0x3f0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x712

    return p0

    :cond_1
    const/16 p0, 0x714

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected getPreferenceOrderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "animated_image"

    .line 347
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "use_service"

    .line 348
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "general_categories"

    .line 349
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "html_description"

    .line 350
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shortcut_preference"

    return-object p0
.end method

.method protected getShortcutTypeCheckBoxValue()I
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 577
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isSettingsEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 593
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 592
    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    sget v3, Lcom/android/settings/R$string;->accessibility_shortcut_edit_summary_software:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 599
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x2

    .line 602
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->hasShortcutType(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 603
    sget p0, Lcom/android/settings/R$string;->accessibility_shortcut_hardware_keyword:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 605
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 610
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_4
    invoke-static {}, Landroid/icu/text/CaseMap;->toTitle()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->wholeString()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/CaseMap$Title;->noLowercase()Landroid/icu/text/CaseMap$Title;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x0

    .line 614
    invoke-static {v2}, Lcom/android/settings/utils/LocaleUtils;->getConcatenatedString(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 613
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CaseMap$Title;->apply(Ljava/util/Locale;Landroid/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract getUserShortcutTypes()I
.end method

.method protected initSettingsPreference()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    .line 453
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v0, "general_categories"

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 458
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected initShortcutPreference()V
    .locals 4

    .line 434
    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/ShortcutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference;->setOnClickCallback(Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;)V

    .line 439
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "general_categories"

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 443
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "shortcut_type"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSavedCheckBoxValue:I

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setupDefaultShortcutIfNecessary(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    if-gtz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 146
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "accessibility_button_targets"

    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 148
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getUserShortcutTypes()I

    move-result p0

    .line 240
    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->createAccessibilityTutorialDialog(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 242
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->accessibility_shortcut_title:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    .line 233
    invoke-static {v1, v0, p1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setupEditShortcutDialog(Landroid/app/Dialog;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initAnimatedImagePreference()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initToggleServiceSwitchPreference()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initGeneralCategory()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initShortcutPreference()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initSettingsPreference()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initHtmlTextPreference()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->initFooterPreference()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V

    .line 176
    new-instance v0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    .line 273
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 296
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 210
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 211
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 212
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "preference_key"

    .line 322
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v0, "resolve_info"

    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "summary"

    .line 333
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDescription:Ljava/lang/CharSequence;

    :cond_2
    const-string v0, "html_description"

    .line 338
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 200
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 201
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreferenceData()V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateShortcutPreference()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "shortcut_type"

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 0

    const/4 p1, 0x1

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method public onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 675
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 674
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 676
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    const/16 p1, 0x3f0

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 684
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 188
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->hide()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updatePreferenceOrder()V

    return-void
.end method

.method saveNonEmptyUserShortcutType(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 726
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 727
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setupEditShortcutDialog(Landroid/app/Dialog;)V
    .locals 3

    .line 521
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 522
    sget v1, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSoftwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 523
    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 525
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 526
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHardwareTypeCheckBox:Landroid/widget/CheckBox;

    .line 527
    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setDialogTextAreaClickListener(Landroid/view/View;Landroid/widget/CheckBox;)V

    .line 529
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateEditShortcutDialogCheckBox()V

    return-void
.end method

.method protected updateShortcutPreference()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 657
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 656
    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 658
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v0, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    .line 658
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ShortcutPreference;->setChecked(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateShortcutPreferenceData()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 642
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    new-instance v1, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 646
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_1
    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 0

    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 0

    .line 288
    sget p0, Lcom/android/settings/R$string;->accessibility_service_primary_switch_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

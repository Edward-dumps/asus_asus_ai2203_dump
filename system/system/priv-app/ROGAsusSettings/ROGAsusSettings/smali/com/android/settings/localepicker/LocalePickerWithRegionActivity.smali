.class public Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;
.super Landroid/app/Activity;
.source "LocalePickerWithRegionActivity.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;


# direct methods
.method public static synthetic $r8$lambda$qaYrgXryu0KD4PRTRThidKCPsJI(Landroid/widget/ListView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->lambda$onResume$0(Landroid/widget/ListView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleBackPressed()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onResume$0(Landroid/widget/ListView;)V
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 70
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 71
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->handleBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-static {p0, p0, p1}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/16 v0, 0x1001

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    .line 55
    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "localeListEditor"

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "localeInfo"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;->handleBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 4

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x102000a

    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    new-instance v1, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ListView;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

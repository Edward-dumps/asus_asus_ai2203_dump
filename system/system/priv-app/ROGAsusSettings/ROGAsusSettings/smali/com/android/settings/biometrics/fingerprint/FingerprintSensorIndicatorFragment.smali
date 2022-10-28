.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSensorIndicatorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

.field private mApplyButton:Landroid/widget/Button;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 52
    sget p1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mApplyButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 95
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->setAnimation()V

    .line 96
    sget p0, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_apply_toast2:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p2, v0, p1, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/core/SettingsBaseActivity;->removeFrameContentScrollingBehaviod()V

    const p2, 0x102003f

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->fod_animation_list:I

    .line 65
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 68
    sget v1, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    sget v1, Lcom/android/settings/R$id;->indicator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    sget v2, Lcom/android/settings/R$id;->preview:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    sget v3, Lcom/android/settings/R$drawable;->fod_animation_style_none:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget v2, Lcom/android/settings/R$id;->hintText:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    .line 74
    sget v1, Lcom/android/settings/R$id;->apply_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mApplyButton:Landroid/widget/Button;

    .line 75
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->init(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 84
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget p2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v1

    iput p2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const-string p2, "ro.sf.lcd_density"

    const/16 v1, 0x1a4

    .line 87
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

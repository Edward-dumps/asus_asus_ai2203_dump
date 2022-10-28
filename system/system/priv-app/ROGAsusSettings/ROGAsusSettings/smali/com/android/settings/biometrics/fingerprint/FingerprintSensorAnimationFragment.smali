.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSensorAnimationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

.field private mApplyButton:Landroid/widget/Button;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    .line 51
    sget p1, Lcom/android/settings/R$string;->asus_fingerprint_animation_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mApplyButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 92
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->setAnimation()V

    .line 93
    sget p0, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_apply_toast2:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->deleteImageDrawable()V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p2, v0, p1, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/core/SettingsBaseActivity;->removeFrameContentScrollingBehaviod()V

    const p2, 0x102003f

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->fod_animation_list:I

    .line 64
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 67
    sget v1, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    sget v1, Lcom/android/settings/R$id;->indicator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getIndicatorDrawable(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    sget v1, Lcom/android/settings/R$id;->preview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    sget v2, Lcom/android/settings/R$id;->hintText:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    .line 73
    sget v0, Lcom/android/settings/R$id;->apply_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mApplyButton:Landroid/widget/Button;

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mAdapter:Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->init(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

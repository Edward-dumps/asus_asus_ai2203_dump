.class public abstract Lcom/android/settings/display/PreviewLayoutPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewLayoutPreferenceFragment.java"


# direct methods
.method public static synthetic $r8$lambda$_EspV1H2OOab0HrdcvmLdDQzo7s(Lcom/android/settings/display/PreviewLayoutPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->commit()V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->toastAndBack()V

    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 44
    sget p0, Lcom/android/settings/R$layout;->asus_style_activity:I

    return p0
.end method

.method protected abstract getPreviewItemResIds()I
.end method

.method protected abstract getPreviewSampleResIds()I
.end method

.method protected abstract getPreviewTitleIds()I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->getActivityLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    sget p3, Lcom/android/settings/R$id;->preview_ui:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->getPreviewSampleResIds()I

    move-result v2

    invoke-virtual {p1, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    sget p3, Lcom/android/settings/R$id;->preview_item_label:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->getPreviewTitleIds()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :cond_1
    sget p3, Lcom/android/settings/R$id;->preview_item_content:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->getPreviewItemResIds()I

    move-result v2

    invoke-virtual {p1, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    :cond_2
    sget p1, Lcom/android/settings/R$id;->button_apply:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 87
    new-instance p3, Lcom/android/settings/display/PreviewLayoutPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PreviewLayoutPreferenceFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p2
.end method

.method protected toastAndBack()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 98
    sget v0, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_apply_toast2:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

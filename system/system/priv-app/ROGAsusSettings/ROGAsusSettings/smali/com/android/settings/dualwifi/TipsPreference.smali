.class public Lcom/android/settings/dualwifi/TipsPreference;
.super Landroidx/preference/Preference;
.source "TipsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    .line 28
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 34
    sget p0, Lcom/android/settings/R$id;->icon_go:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    :cond_1
    sget p0, Lcom/android/settings/R$id;->preference_value:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

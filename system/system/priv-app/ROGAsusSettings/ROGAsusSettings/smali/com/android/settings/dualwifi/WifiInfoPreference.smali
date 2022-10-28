.class public Lcom/android/settings/dualwifi/WifiInfoPreference;
.super Landroidx/preference/Preference;
.source "WifiInfoPreference.java"


# instance fields
.field private mApBandType:I

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mApBandType:I

    .line 27
    sget p1, Lcom/android/settings/R$layout;->preference_wifi_info:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mApBandType:I

    .line 22
    sget p1, Lcom/android/settings/R$layout;->preference_wifi_info:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 34
    sget v0, Lcom/android/settings/R$id;->band_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 36
    iget v2, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mApBandType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 37
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    sget v2, Lcom/android/settings/R$drawable;->wifi_band_24g:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 40
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    sget v2, Lcom/android/settings/R$drawable;->wifi_band_5g:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 43
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    sget v2, Lcom/android/settings/R$drawable;->wifi_band_6g:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 50
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v0, 0x1020010

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 59
    iget-object p0, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mWifiSsid:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_4
    sget p0, Lcom/android/settings/R$id;->icon_go:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    .line 67
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setWifiInfo(ILjava/lang/String;)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mApBandType:I

    .line 73
    iput-object p2, p0, Lcom/android/settings/dualwifi/WifiInfoPreference;->mWifiSsid:Ljava/lang/String;

    .line 74
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

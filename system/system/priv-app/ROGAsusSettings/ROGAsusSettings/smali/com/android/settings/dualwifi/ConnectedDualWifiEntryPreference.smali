.class public Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;
.super Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;
.source "ConnectedDualWifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 26
    sget p1, Lcom/android/settingslib/R$layout;->preference_widget_gear_optional_background:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/dualwifi/settingslib/LongPressDualWifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    sget v0, Lcom/android/settingslib/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSignIn()Z

    move-result v1

    .line 45
    sget v2, Lcom/android/settingslib/R$id;->settings_button_no_background:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 47
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    sget v0, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 58
    sget v0, Lcom/android/settingslib/R$id;->settings_button_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 60
    :goto_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settingslib/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/dualwifi/ConnectedDualWifiEntryPreference$OnGearClickListener;

    .line 34
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

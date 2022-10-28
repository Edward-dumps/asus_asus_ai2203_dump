.class public Lcom/android/settings/display/NaviBarLayoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NaviBarLayoutPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final BUTTON_LAYOUT_PREF_PROVIDER_KEY:Ljava/lang/String;

.field private mButtonBackHomeRecent:Landroid/widget/RadioButton;

.field private mButtonRecentHomeBack:Landroid/widget/RadioButton;

.field private mImageBackHomeRecent:Landroid/widget/ImageView;

.field private mImageRecentHomeBack:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "button_layout_provider_key"

    .line 49
    iput-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->BUTTON_LAYOUT_PREF_PROVIDER_KEY:Ljava/lang/String;

    return-void
.end method

.method private getButtonLayoutMode()I
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "button_layout_provider_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initView()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "button_layout_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 92
    iget-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mImageBackHomeRecent:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->asus_navigationbar_pic_1_zenui_six:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mImageRecentHomeBack:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->asus_navigationbar_pic_2_zenui_six:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->getButtonLayoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonBackHomeRecent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object p0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonRecentHomeBack:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonBackHomeRecent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonRecentHomeBack:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "navigation_bar_button_layout"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 69
    sget v0, Lcom/android/settings/R$id;->image_back_home_recent:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mImageBackHomeRecent:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Lcom/android/settings/R$id;->button_back_home_recent:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonBackHomeRecent:Landroid/widget/RadioButton;

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/android/settings/R$id;->image_recent_home_back:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mImageRecentHomeBack:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lcom/android/settings/R$id;->button_recent_home_back:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonRecentHomeBack:Landroid/widget/RadioButton;

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->initView()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "navigation_bar_button_layout"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 107
    sget v0, Lcom/android/settings/R$id;->image_back_home_recent:I

    const-string v1, "button_layout_provider_key"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    sget v0, Lcom/android/settings/R$id;->button_back_home_recent:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget v0, Lcom/android/settings/R$id;->image_recent_home_back:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/android/settings/R$id;->button_recent_home_back:I

    if-ne p1, v0, :cond_3

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonRecentHomeBack:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonBackHomeRecent:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 108
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonRecentHomeBack:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/display/NaviBarLayoutPreferenceController;->mButtonBackHomeRecent:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    return-void
.end method

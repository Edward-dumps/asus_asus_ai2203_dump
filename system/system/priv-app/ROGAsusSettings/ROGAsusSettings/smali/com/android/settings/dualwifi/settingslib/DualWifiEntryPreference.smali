.class public Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;
.super Landroidx/preference/Preference;
.source "DualWifiEntryPreference.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$OnButtonClickListener;,
        Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_SECURED:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mHe8ssCapableAp:Z

.field private final mIconInjector:Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;

.field private mIs6GHz:Z

.field private mLevel:I

.field private mOnButtonClickListener:Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$OnButtonClickListener;

.field private mShowX:Z

.field private mVhtMax8SpatialStreamsSupport:Z

.field private mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 32
    sget v2, Lcom/android/settingslib/R$attr;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->STATE_SECURED:[I

    new-array v1, v0, [I

    .line 36
    sget v2, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->FRICTION_ATTRS:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 41
    sget v2, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sput-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 1

    .line 63
    new-instance v0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;

    invoke-direct {v0, p1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mLevel:I

    .line 71
    sget p1, Lcom/android/settingslib/R$layout;->preference_access_point:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 72
    sget p1, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 74
    iput-object p2, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 75
    invoke-virtual {p2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setListener(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;)V

    .line 76
    iput-object p3, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mIconInjector:Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->refresh()V

    return-void
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 263
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->STATE_SECURED:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 271
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getFrictionStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    .line 244
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->FRICTION_ATTRS:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    return-object v0
.end method

.method private updateIcon(ZIIZZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 227
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mIconInjector:Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$IconInjector;->getIcon(ZIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method buildContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .line 279
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, ","

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-nez v3, :cond_0

    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v1, v3, v7

    aput-object v5, v3, v6

    aput-object v2, v3, v4

    .line 284
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v2

    if-ltz v2, :cond_1

    .line 287
    sget-object v3, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v9, v3

    if-ge v2, v9, :cond_1

    new-array v9, v8, [Ljava/lang/CharSequence;

    aput-object v1, v9, v7

    aput-object v5, v9, v6

    .line 288
    aget v1, v3, v2

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    .line 288
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    new-array v2, v8, [Ljava/lang/CharSequence;

    aput-object v1, v2, v7

    aput-object v5, v2, v6

    .line 292
    iget-object p0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result p0

    if-nez p0, :cond_2

    .line 293
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 294
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    aput-object p0, v2, v4

    .line 291
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 92
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 99
    sget v1, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 102
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    sget v1, Lcom/android/settingslib/R$drawable;->ic_help:I

    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010429

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 104
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 108
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settingslib/R$string;->help_label:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settingslib/R$id;->icon_button:I

    if-ne p1, v0, :cond_0

    .line 333
    iget-object p1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mOnButtonClickListener:Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$OnButtonClickListener;

    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference$OnButtonClickListener;->onButtonClick(Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 13

    .line 129
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiStandard()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isVhtMax8SpatialStreamsSupported()Z

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isHe8ssCapableAp()Z

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->shouldShowXLevelIcon()Z

    move-result v4

    .line 136
    iget v5, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mLevel:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mShowX:Z

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mWifiStandard:I

    if-ne v1, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mHe8ssCapableAp:Z

    if-ne v3, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mVhtMax8SpatialStreamsSupport:Z

    if-eq v2, v5, :cond_2

    .line 139
    :cond_0
    iput v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mLevel:I

    .line 140
    iput v1, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mWifiStandard:I

    .line 141
    iput-boolean v3, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mHe8ssCapableAp:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mVhtMax8SpatialStreamsSupport:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mShowX:Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->is6GHz()Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mIs6GHz:Z

    .line 145
    iget-boolean v8, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mShowX:Z

    iget v9, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mLevel:I

    iget v10, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mWifiStandard:I

    iget-boolean v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mHe8ssCapableAp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mVhtMax8SpatialStreamsSupport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v6

    :goto_0
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->updateIcon(ZIIZZ)V

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->buildContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/settingslib/DualWifiEntryPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

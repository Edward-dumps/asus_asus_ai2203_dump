.class public Lcom/android/settings/fuelgauge/ExpandDividerPreference;
.super Landroidx/preference/Preference;
.source "ExpandDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;
    }
.end annotation


# static fields
.field static final PREFERENCE_KEY:Ljava/lang/String; = "expandable_divider"


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field private mIsExpanded:Z

.field private mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

.field mTextView:Landroid/widget/TextView;

.field private mTitleContent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$37-NW20HbcVMFf0glW_MGMN4zSE(Lcom/android/settings/fuelgauge/ExpandDividerPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->lambda$setTitle$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    .line 54
    sget p1, Lcom/android/settings/R$layout;->preference_expand_divider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p1, "expandable_divider"

    .line 55
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTitle$0(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshState()V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 95
    sget v0, Lcom/android/settings/R$drawable;->ic_settings_expand_less:I

    goto :goto_0

    .line 96
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->ic_settings_expand_more:I

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->setTitle(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->expand_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTextView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/android/settings/R$id;->expand_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mImageView:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    .line 69
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

    if-eqz v0, :cond_0

    .line 71
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;->onExpand(Z)V

    :cond_0
    return-void
.end method

.method setIsExpanded(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    .line 85
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    return-void
.end method

.method setOnExpandListener(Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 2

    .line 76
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/android/settings/fuelgauge/ExpandDividerPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/ExpandDividerPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/ExpandDividerPreference;Ljava/lang/String;)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

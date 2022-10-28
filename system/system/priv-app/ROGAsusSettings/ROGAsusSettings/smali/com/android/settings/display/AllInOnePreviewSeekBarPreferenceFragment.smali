.class public abstract Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AllInOnePreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private displayListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

.field private fontListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

.field private mApplyBtn:Landroid/widget/Button;

.field protected mCurrentIndex_display:I

.field protected mCurrentIndex_font:I

.field protected mEntries_display:[Ljava/lang/String;

.field protected mEntries_font:[Ljava/lang/String;

.field protected mInitialDisplayIndex:I

.field protected mInitialFontIndex:I

.field private mLarger_display:Landroid/view/View;

.field private mLarger_font:Landroid/view/View;

.field private mLastCommitTime:J

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

.field private mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller_display:Landroid/view/View;

.field private mSmaller_font:Landroid/view/View;

.field private mStatus_display:Landroid/widget/TextView;

.field private mStatus_font:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$29DJnRl8UW1N7B3zhZDp6x3Mvv0(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->lambda$onCreateView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXEEygZp0fqPSlritPDaPAjdfow(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->lambda$onCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsN14eoPSBwBBP22rjeu_mq721g(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjIX3qTTwHOuM6IPw4OFVatUOMc(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z9hBGfE7UEgj6X_BWgUmWvfPrLY(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 351
    new-instance v0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 369
    new-instance v0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setApplyButtonWhenChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;ZIZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setPreviewLayer(ZIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/AllInOnePreviewPagerAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 185
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 191
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/view/View;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 209
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/view/View;)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->apply()V

    return-void
.end method

.method private setApplyButtonWhenChanged(Z)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mApplyBtn:Landroid/widget/Button;

    if-eqz p0, :cond_0

    .line 314
    sget p1, Lcom/android/settings/R$string;->btn_apply:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    sget v1, Lcom/android/settings/R$string;->preview_page_indicator_content_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 347
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewLayer(ZIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 320
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mStatus_font:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSmaller_font:Landroid/view/View;

    if-lez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLarger_font:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mStatus_display:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSmaller_display:Landroid/view/View;

    if-lez p2, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLarger_display:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    if-eqz p1, :cond_5

    .line 331
    iget-object v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    iget v5, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_display:I

    iget v4, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_font:I

    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 333
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    move v2, p2

    move v3, v5

    move v7, p3

    .line 331
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setPreviewLayer(IIIIIZ)V

    .line 334
    iput p2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_font:I

    .line 335
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->fontListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-static {p0, p2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$600(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;I)V

    goto :goto_3

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    iget v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_font:I

    iget v4, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_display:I

    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 339
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    move v1, v3

    move v2, p2

    move v6, p3

    .line 337
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->setPreviewLayer(IIIIIZ)V

    .line 340
    iput p2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_display:I

    .line 341
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->displayListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-static {p0, p2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$600(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected abstract apply()V
.end method

.method protected abstract commit()V
.end method

.method protected abstract createConfigForDisplay(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract createConfigForFont(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract getActivityLayoutResId()I
.end method

.method protected abstract getPreviewSampleResIds()[I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    if-eqz p3, :cond_0

    const-string v0, "mLastCommitTime"

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    .line 161
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 162
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->getActivityLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 166
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    sget p3, Lcom/android/settings/R$id;->apply_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mApplyBtn:Landroid/widget/Button;

    .line 169
    sget p3, Lcom/android/settings/R$id;->font_status:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mStatus_font:Landroid/widget/TextView;

    .line 170
    sget p3, Lcom/android/settings/R$id;->display_status:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mStatus_display:Landroid/widget/TextView;

    .line 175
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 176
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 178
    sget v3, Lcom/android/settings/R$id;->seek_bar_font:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    .line 179
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v3, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 181
    sget p3, Lcom/android/settings/R$id;->smaller_font:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSmaller_font:Landroid/view/View;

    .line 182
    new-instance v3, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p3, Lcom/android/settings/R$id;->larger_font:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLarger_font:Landroid/view/View;

    .line 189
    new-instance v3, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget p3, Lcom/android/settings/R$id;->seek_bar_display:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    .line 197
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 198
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 199
    sget p3, Lcom/android/settings/R$id;->smaller_display:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSmaller_display:Landroid/view/View;

    .line 200
    new-instance v2, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget p3, Lcom/android/settings/R$id;->larger_display:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLarger_display:Landroid/view/View;

    .line 207
    new-instance v2, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_1

    .line 217
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 219
    :cond_1
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_2

    .line 222
    iget-object p3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 226
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_3

    move v8, v0

    goto :goto_0

    :cond_3
    move v8, v1

    .line 228
    :goto_0
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    array-length v3, v3

    new-array v6, v3, [Landroid/content/res/Configuration;

    move v3, v1

    .line 229
    :goto_1
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 230
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->createConfigForFont(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v4

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    :cond_4
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    array-length v3, v3

    new-array v7, v3, [Landroid/content/res/Configuration;

    move v3, v1

    .line 233
    :goto_2
    iget-object v4, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 234
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->createConfigForDisplay(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v4

    aput-object v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 237
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object v9

    .line 238
    sget v2, Lcom/android/settings/R$id;->preview_pager:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 239
    new-instance v10, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    move-object v2, v10

    move-object v3, p3

    move v4, v8

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;[Landroid/content/res/Configuration;)V

    iput-object v10, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    .line 241
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v10}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 242
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v8, :cond_6

    array-length v3, v9

    sub-int/2addr v3, v0

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 245
    sget v2, Lcom/android/settings/R$id;->page_indicator:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 246
    array-length v3, v9

    if-le v3, v0, :cond_7

    .line 247
    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v3, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_4

    :cond_7
    const/16 v3, 0x8

    .line 251
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :goto_4
    sget v2, Lcom/android/settings/R$id;->apply_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 255
    new-instance v2, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance p1, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;)V

    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->fontListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 260
    invoke-static {p1, v0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$500(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Z)V

    .line 261
    new-instance p1, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-direct {p1, p0, v2}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;)V

    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->displayListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    .line 262
    invoke-static {p1, v1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->access$500(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;Z)V

    .line 264
    iget p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mInitialFontIndex:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setPreviewLayer(ZIZ)V

    .line 265
    iget p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mInitialDisplayIndex:I

    invoke-direct {p0, v1, p1, v1}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->setPreviewLayer(ZIZ)V

    .line 267
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {p3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintSeekbar(Landroid/content/Context;Landroid/widget/SeekBar;I)V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {p3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p3

    invoke-static {p1, p0, p3}, Lcom/android/settingslib/widget/ThemeUtils;->tintSeekbar(Landroid/content/Context;Landroid/widget/SeekBar;I)V

    :cond_8
    return-object p2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-wide v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    const-string p0, "mLastCommitTime"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 277
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_font:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->fontListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_display:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->displayListener:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 290
    iget-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_font:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mSeekBar_display:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

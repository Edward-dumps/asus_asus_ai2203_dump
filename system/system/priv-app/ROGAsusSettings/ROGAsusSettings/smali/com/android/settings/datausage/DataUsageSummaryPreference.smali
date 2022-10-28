.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroidx/preference/Preference;
.source "DataUsageSummaryPreference.java"


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

.field private static final WARNING_AGE:J


# instance fields
.field private final CYCLE_TIME_UNINITIAL_VALUE:J

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/CharSequence;

.field private mNumPlans:I

.field private mProgress:F

.field private mSingleWifi:Z

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mWifiMode:Z


# direct methods
.method public static synthetic $r8$lambda$ix0vY6kvtvkERHEc2kKLwswQUhw(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iy12OmXgHFGFUvfbHL0SnlvruEc(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const-wide/16 p1, 0x0

    .line 75
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->CYCLE_TIME_UNINITIAL_VALUE:J

    .line 105
    sget p1, Lcom/android/settings/R$layout;->data_usage_summary_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private calculateTruncatedUpdateAge()J
    .locals 6

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    sub-long/2addr v0, v2

    .line 375
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 376
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    div-long/2addr v0, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_0
    mul-long/2addr v0, v2

    return-wide v0

    .line 377
    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 378
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    div-long/2addr v0, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_0

    .line 379
    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 380
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    div-long/2addr v0, v4

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->launchWifiDataUsage(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .locals 0

    .line 227
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static launchWifiDataUsage(Landroid/content/Context;)V
    .locals 4

    .line 250
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 251
    sget-object v2, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    const/4 v3, 0x0

    .line 252
    invoke-static {v2, v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    const-string v3, "network_template"

    .line 251
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "network_type"

    .line 254
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/android/settings/datausage/DataUsageList;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 259
    sget v0, Lcom/android/settings/R$string;->wifi_data_usage:I

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 0

    .line 388
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 389
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateCarrierInfo(Landroid/widget/TextView;)V
    .locals 8

    .line 327
    iget v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->calculateTruncatedUpdateAge()J

    move-result-wide v4

    const/4 v1, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 335
    sget v2, Lcom/android/settings/R$string;->carrier_and_update_now_text:I

    goto :goto_1

    .line 337
    :cond_0
    sget v2, Lcom/android/settings/R$string;->no_carrier_update_now_text:I

    goto :goto_1

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 341
    sget v1, Lcom/android/settings/R$string;->carrier_and_update_text:I

    goto :goto_0

    .line 343
    :cond_2
    sget v1, Lcom/android/settings/R$string;->no_carrier_update_text:I

    :goto_0
    move v2, v1

    .line 346
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double v6, v4

    .line 345
    invoke-static {v1, v6, v7, v0, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 352
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    aput-object v6, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 351
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    sget-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3

    const v0, 0x1010038

    .line 357
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_2

    :cond_3
    const v0, 0x1010543

    .line 360
    sget-object v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setCarrierInfoTextStyle(Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto :goto_2

    :cond_4
    const/16 p0, 0x8

    .line 363
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getCycleTime(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    .line 307
    iget-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 p0, 0x8

    .line 308
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-wide v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 315
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->billing_cycle_none_left:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 317
    :cond_1
    sget-wide v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    div-long/2addr v4, v1

    long-to-int v1, v4

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 319
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->billing_cycle_less_than_one_day_left:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$plurals;->billing_cycle_days_left:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 320
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 318
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateDataUsageLabels(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getDataUsed(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 268
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->usage_number_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 271
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 273
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->data_used_formatted:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v2, v4, v5

    .line 275
    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v4, v2

    .line 276
    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLayout(Landroidx/preference/PreferenceViewHolder;)Lcom/android/settings/datausage/MeasurableLinearLayout;

    move-result-object v1

    .line 281
    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    if-ltz v3, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getDataRemaining(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    .line 283
    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    iget-wide v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    sub-long/2addr v3, v8

    cmp-long v6, v3, v6

    if-ltz v6, :cond_0

    .line 286
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->data_remaining:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 286
    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 285
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x1010435

    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 288
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->data_overusage:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 293
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    neg-long v3, v3

    invoke-static {v7, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    .line 292
    invoke-static {v6, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 291
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x1010543

    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 299
    invoke-virtual {v1, v0, p0}, Lcom/android/settings/datausage/MeasurableLinearLayout;->setChildren(Landroid/view/View;Landroid/view/View;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected getCarrierInfo(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 412
    sget p0, Lcom/android/settings/R$id;->carrier_and_update:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getCycleTime(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 407
    sget p0, Lcom/android/settings/R$id;->cycle_left_time:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getDataLimits(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 417
    sget p0, Lcom/android/settings/R$id;->data_limits:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getDataRemaining(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 427
    sget p0, Lcom/android/settings/R$id;->data_remaining_view:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getDataUsed(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 422
    sget p0, Lcom/android/settings/R$id;->data_usage_view:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getHistoricalUsageLevel()J
    .locals 2

    .line 394
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 395
    sget-object p0, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    const/4 v1, 0x0

    .line 396
    invoke-static {p0, v1}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    .line 395
    invoke-virtual {v0, p0}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLabel1(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x1020014

    .line 442
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getLabel2(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x1020015

    .line 447
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getLabelBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 437
    sget p0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected getLaunchButton(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/Button;
    .locals 0

    .line 432
    sget p0, Lcom/android/settings/R$id;->launch_mdp_app_button:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected getLayout(Landroidx/preference/PreferenceViewHolder;)Lcom/android/settings/datausage/MeasurableLinearLayout;
    .locals 0

    .line 457
    sget p0, Lcom/android/settings/R$id;->usage_layout:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/MeasurableLinearLayout;

    return-object p0
.end method

.method protected getProgressBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/ProgressBar;
    .locals 0

    .line 452
    sget p0, Lcom/android/settings/R$id;->determinateBar:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method protected getUsageTitle(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 402
    sget p0, Lcom/android/settings/R$id;->usage_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    .line 159
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getProgressBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 162
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLabelBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLabel1(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLabel2(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLabelBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels(Landroidx/preference/PreferenceViewHolder;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getUsageTitle(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 180
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 181
    check-cast v4, Landroid/view/View;

    .line 182
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/AsusTelephonyUtils;->getCNPreferenceStartPadding(Landroid/content/Context;)I

    move-result v5

    .line 183
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 186
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getCarrierInfo(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getLaunchButton(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/Button;

    move-result-object v5

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getDataLimits(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    .line 194
    iget-boolean v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v7, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSingleWifi:Z

    if-eqz v8, :cond_4

    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    .line 197
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_4
    if-eqz v7, :cond_6

    .line 204
    sget v7, Lcom/android/settings/R$string;->data_usage_wifi_title:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getCycleTime(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    .line 207
    iget-object v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getHistoricalUsageLevel()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-lez v1, :cond_5

    .line 213
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 217
    :cond_5
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    :goto_2
    sget v1, Lcom/android/settings/R$string;->launch_wifi_text:I

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(I)V

    .line 220
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 222
    :cond_6
    iget v7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    move v7, v3

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    .line 224
    invoke-direct {p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCarrierInfo(Landroid/widget/TextView;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_8

    .line 226
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 231
    :cond_8
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    :goto_4
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v2, v3

    .line 233
    :cond_9
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_5
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 239
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintStaticProgressBar(Landroid/widget/ProgressBar;I)V

    .line 240
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/settingslib/widget/ThemeUtils;->tintButton(Landroid/widget/Button;Landroid/content/Context;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->getDataUsed(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 243
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 132
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 133
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    .line 139
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLimitInfo(Ljava/lang/CharSequence;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    .line 117
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setUsageInfo(JJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    .line 123
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    .line 124
    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    .line 125
    iput p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    .line 126
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method setUsageNumbers(JJZ)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    .line 145
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    .line 146
    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    .line 147
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method setWifiMode(ZLjava/lang/String;Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    .line 152
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    .line 153
    iput-boolean p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSingleWifi:Z

    .line 154
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

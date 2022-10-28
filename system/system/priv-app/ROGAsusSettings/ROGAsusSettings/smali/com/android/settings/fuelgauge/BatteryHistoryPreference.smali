.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroidx/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

.field mHideSummary:Z

.field private mIsChartGraphEnabled:Z

.field private mSummaryContent:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$zq6XJ4uUEAVd33nrbe2_lfjIv8w(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->lambda$setBatteryUsageStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    .line 57
    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isChartGraphEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryHistoryPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    if-eqz p1, :cond_0

    .line 61
    sget p1, Lcom/android/settings/R$layout;->battery_chart_graph:I

    goto :goto_0

    .line 62
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->battery_usage_graph:I

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private synthetic lambda$setBatteryUsageStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public hideBottomSummary()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideSummary:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    if-nez v2, :cond_0

    return-void

    .line 103
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    if-eqz v2, :cond_1

    .line 104
    sget v2, Lcom/android/settings/R$id;->battery_chart:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryChartView;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    .line 105
    sget v3, Lcom/android/settings/R$id;->companion_text:I

    .line 106
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 105
    invoke-virtual {v2, p1}, Lcom/android/settings/fuelgauge/BatteryChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    if-eqz p1, :cond_4

    .line 108
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    goto :goto_0

    .line 111
    :cond_1
    sget v2, Lcom/android/settings/R$id;->charge:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v3, Lcom/android/settings/R$id;->bottom_summary:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    .line 114
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideSummary:Z

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_3
    sget v3, Lcom/android/settings/R$id;->battery_usage:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    .line 121
    sget v3, Lcom/android/settings/R$id;->label_group:I

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    invoke-virtual {v3, p1, v4}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 123
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    const-string p0, "BatteryHistoryPreference"

    const-string p1, "onBindViewHolder"

    .line 127
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V

    return-void
.end method

.method public setBottomSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    .line 68
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHideSummary:Z

    return-void
.end method

.method setChartPreferenceController(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    .line 91
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryChartView:Lcom/android/settings/fuelgauge/BatteryChartView;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/BatteryChartView;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;
    }
.end annotation


# instance fields
.field enableTriState:Z

.field private mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAsusFreezerAppPreferenceController:Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field mBackgroundPreference:Landroidx/preference/Preference;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mForegroundPreference:Landroidx/preference/Preference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$d8w-AEtndX6KO2gcf2LcMpuiLww(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->lambda$initPreferenceForTriState$0(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    return-void
.end method

.method private getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x2

    const-wide/32 v2, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    .line 626
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage_less_minute_with_period:I

    .line 627
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 626
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 629
    :cond_0
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage_with_period:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 630
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 629
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    .line 637
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_less_minute_with_period:I

    .line 638
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 637
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    .line 643
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_with_period:I

    goto :goto_1

    .line 644
    :cond_3
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_and_bg_less_minute_usage_with_period:I

    .line 642
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 646
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 645
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 641
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 652
    :cond_4
    sget p1, Lcom/android/settings/R$string;->battery_total_and_bg_usage_with_period:I

    .line 653
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 655
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 654
    invoke-static {v1, p5, p6, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v5

    .line 660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 659
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p7, v0, p2

    .line 652
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppActiveTime(JJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    add-long v5, p1, p3

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    .line 519
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 520
    sget p1, Lcom/android/settings/R$string;->battery_not_usage_24hr:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->battery_not_usage:I

    .line 519
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-nez p5, :cond_3

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-interface {v0, p5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 524
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 525
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    .line 529
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    .line 540
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage_less_minute:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 541
    :cond_0
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 542
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 541
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    .line 549
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_less_minute:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    .line 554
    sget p1, Lcom/android/settings/R$string;->battery_total_usage:I

    goto :goto_1

    .line 555
    :cond_3
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_and_bg_less_minute_usage:I

    .line 553
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 556
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 552
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 563
    :cond_4
    sget p1, Lcom/android/settings/R$string;->battery_total_and_bg_usage:I

    .line 564
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 566
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 565
    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    .line 571
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 570
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    .line 563
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    .line 583
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage_less_minute_24hr:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 584
    :cond_0
    sget p1, Lcom/android/settings/R$string;->battery_bg_usage_24hr:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 585
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 584
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    .line 592
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_less_minute_24hr:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    .line 597
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_24hr:I

    goto :goto_1

    .line 598
    :cond_3
    sget p1, Lcom/android/settings/R$string;->battery_total_usage_and_bg_less_minute_usage_24hr:I

    .line 596
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 600
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 599
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 595
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 606
    :cond_4
    sget p1, Lcom/android/settings/R$string;->battery_total_and_bg_usage_24hr:I

    .line 607
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 608
    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    .line 614
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 613
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    .line 606
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initPreferenceForTriState$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 389
    sget p2, Lcom/android/settings/R$string;->help_url_app_usage_settings:I

    .line 390
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 389
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onCreateForTriState(Ljava/lang/String;)V
    .locals 4

    const-string v0, "unrestricted_pref"

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "optimized_pref"

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "restricted_pref"

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "app_usage_footer_preference"

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 503
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    .line 507
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method

.method private static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V
    .locals 5

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$200(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    if-nez v1, :cond_0

    .line 187
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$300(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_label"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$600(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v3, "extra_icon_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$200(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$500(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$900(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v3

    const-string v1, "extra_background_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$800(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v3

    const-string v1, "extra_foreground_time"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$400(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_slot_time"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$100(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_power_usage_percent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$700(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v3, "extra_power_usage_amount"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1000(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_1

    .line 202
    :cond_1
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$500(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 205
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_2
    const-string v1, "user"

    .line 206
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 207
    invoke-static {p0}, Lcom/android/settings/twinApps/TwinAppsUtil;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    move p2, v3

    .line 211
    :cond_3
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->battery_details_title:I

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 215
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 146
    iget-object v0, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 147
    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$1;)V

    .line 149
    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$102(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$202(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$302(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    invoke-static {v1, p5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$402(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$502(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    .line 154
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppIconId()I

    move-result p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$602(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    .line 155
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    double-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$702(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_0

    .line 157
    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 156
    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$802(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    if-eqz p4, :cond_1

    .line 159
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 158
    :cond_1
    invoke-static {v1, v2, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$902(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1002(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)Z

    .line 161
    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Z)V
    .locals 5

    .line 168
    new-instance v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$1;)V

    .line 170
    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$102(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$202(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$302(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$502(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    .line 174
    iget p3, p2, Lcom/android/settings/fuelgauge/BatteryEntry;->iconId:I

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$602(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    .line 175
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    double-to-int p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$702(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)I

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_0

    .line 176
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$802(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    if-eqz p4, :cond_1

    .line 177
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v1

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$902(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)J

    .line 178
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->access$1002(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)Z

    .line 179
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 6

    .line 231
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "user"

    .line 233
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 235
    instance-of v3, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 236
    move-object v3, p1

    check-cast v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_0
    move v3, v4

    .line 238
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/twinApps/TwinAppsUtil;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdvancedPowerDetail"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    :goto_1
    const-string v1, "extra_package_name"

    .line 244
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v4}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extra_power_usage_percent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_uid"

    .line 246
    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->battery_details_title:I

    .line 250
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 252
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V
    .locals 0

    .line 495
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    .line 416
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 419
    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 422
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v3, :cond_1

    .line 425
    new-instance v3, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v3, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v3, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    :cond_1
    new-instance v3, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v3, p1, p0, v2, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 431
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-direct {v3, v4, p0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 432
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :goto_0
    new-instance v3, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAsusFreezerAppPreferenceController:Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;

    .line 439
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 408
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$xml;->power_usage_detail:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$xml;->power_usage_detail_legacy:I

    :goto_0
    return p0
.end method

.method public handleDialogClick(I)V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method initHeader()V
    .locals 10

    .line 310
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 314
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v3, 0x0

    .line 316
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 319
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    .line 320
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    const-string v4, "extra_icon_id"

    .line 322
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 331
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 332
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    .line 335
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v3, :cond_2

    const-string v3, "extra_foreground_time"

    .line 336
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v3, "extra_background_time"

    .line 337
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v3, 0x0

    const-string v4, "extra_slot_time"

    .line 338
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 339
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveTime(JJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    const/4 p0, 0x1

    .line 342
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method initPreference(Landroid/content/Context;)V
    .locals 9

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_foreground_time"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    .line 349
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 350
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    sget v5, Lcom/android/settings/R$string;->battery_used_for:I

    .line 351
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/CharSequence;

    long-to-double v1, v1

    const/4 v8, 0x0

    .line 352
    invoke-static {p1, v1, v2, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v8

    .line 351
    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->battery_active_for:I

    .line 358
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/CharSequence;

    long-to-double v2, v3

    .line 359
    invoke-static {p1, v2, v3, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v8

    .line 358
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 357
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method initPreferenceForTriState(Landroid/content/Context;)V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 373
    sget v0, Lcom/android/settings/R$string;->manager_battery_usage_optimized_only:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    sget v3, Lcom/android/settings/R$string;->manager_battery_usage_footer_limited:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    sget v0, Lcom/android/settings/R$string;->manager_battery_usage_unrestricted_only:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    sget v3, Lcom/android/settings/R$string;->manager_battery_usage_footer_limited:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 383
    :cond_1
    sget v0, Lcom/android/settings/R$string;->manager_battery_usage_footer:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->help_url_app_usage_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 392
    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget v0, Lcom/android/settings/R$string;->manager_battery_usage_link_a11y:I

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 448
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 258
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string v0, "user"

    .line 262
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    .line 462
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 463
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 462
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 267
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->onCreateForTriState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "app_usage_foreground"

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const-string v0, "app_usage_background"

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    :goto_0
    const-string v0, "header_view"

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/twinApps/TwinAppsUtil;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getTwinAppsId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extra_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    goto :goto_1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_2
    :goto_1
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 8

    .line 468
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0x6f0

    goto :goto_0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x6f1

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x6f2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x1

    .line 487
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    .line 488
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v1

    new-instance v1, Landroid/util/Pair;

    const/4 v4, 0x3

    .line 489
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v6, "extra_power_usage_percent"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v5

    .line 484
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 292
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    .line 295
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->enableTriState:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreferenceForTriState(Landroid/content/Context;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x761

    .line 299
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

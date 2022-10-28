.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/datausage/DataUsageEditController;


# instance fields
.field private mAllBillingCyclePreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/datausage/BillingCyclePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverPreference:Landroidx/preference/Preference;

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field private mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 3

    .line 283
    sget v0, Lcom/android/settings/R$xml;->data_usage_ethernet:I

    .line 284
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 285
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 233
    sget v0, Lcom/android/settings/R$xml;->data_usage_cellular:I

    .line 234
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 238
    invoke-static {p2, v1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "mobile_category"

    .line 241
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 242
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateTitles()V

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_usage_enable"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/CellDataPreference;

    const-string v1, "cellular_data_usage"

    .line 249
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsagePreference;

    const-string v2, "billing_preference"

    .line 252
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/BillingCyclePreference;

    .line 253
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 257
    invoke-virtual {v1, p0}, Lcom/android/settings/datausage/DataUsagePreference;->updateTitle(Z)V

    :cond_1
    const-string p0, "DataUsageSummary"

    if-eqz p2, :cond_2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellDataPreference key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/android/settings/datausage/DataUsageSummary;->getMobileSlot()I

    move-result p0

    if-eq v0, p0, :cond_3

    const/4 p0, 0x0

    .line 265
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "cellEnablePreference is null!"

    .line 268
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 6

    const/high16 v4, 0x3fc80000    # 1.5625f

    const v5, 0x3f23d70a    # 0.64f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 340
    invoke-static/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummary;->formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;
    .locals 6

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    .line 349
    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 350
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result p4

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p3, v0, v1, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 352
    new-instance p4, Landroid/text/SpannableString;

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "fileSizeSuffix"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%1$s"

    const-string v3, "^1"

    .line 354
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2$s"

    const-string v3, "^2"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/CharSequence;

    aput-object p3, p0, v1

    .line 355
    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p0, p3

    invoke-static {p4, p0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 358
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 359
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p4

    invoke-virtual {p2, p1, v1, p4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-array p1, p3, [Ljava/lang/CharSequence;

    .line 361
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    .line 360
    invoke-static {p2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileSlot()I
    .locals 3

    .line 408
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "persist.radio.asus.mobile_slot"

    .line 409
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "persist.vendor.asus.mobile_slot"

    .line 411
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v0

    .line 413
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileSlot(): slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageSummary"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private inflatePreferences(I)Landroidx/preference/Preference;
    .locals 3

    .line 289
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 289
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 292
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 294
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 296
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private updateState()V
    .locals 4

    .line 365
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    .line 366
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 367
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 368
    instance-of v3, v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_0

    .line 369
    check-cast v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addMobileSection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method addWifiSection()V
    .locals 3

    .line 275
    sget v0, Lcom/android/settings/R$xml;->data_usage_wifi:I

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 277
    sget-object v1, Landroid/net/NetworkTemplate;->WIFI_NETWORKID_ALL:Ljava/lang/String;

    const/4 v2, 0x0

    .line 278
    invoke-static {v1, v2}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 205
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 206
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object v0
.end method

.method enableProxySubscriptionManager(Landroid/content/Context;)V
    .locals 0

    .line 221
    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 108
    sget p0, Lcom/android/settings/R$string;->help_url_data_usage:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object p0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 192
    sget p0, Lcom/android/settings/R$xml;->data_usage:I

    return p0
.end method

.method hasActiveSubscription()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->enableProxySubscriptionManager(Landroid/content/Context;)V

    .line 118
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 120
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v0, v2

    .line 125
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    const-string v3, "restrict_background"

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Landroidx/preference/Preference;

    .line 131
    invoke-static {p1, v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string v4, "status_header"

    .line 132
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 134
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string v5, "DataUsageSummary"

    if-eqz v4, :cond_1

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate(): mDefaultTemplate = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate(): hasMobileData = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isAdmin = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 142
    :cond_3
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 145
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 146
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 148
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_6

    .line 153
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-direct {p0, v6, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasActiveSubscription()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 170
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasEthernet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 171
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    .line 173
    :cond_a
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 176
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate(): isVoiceCapable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 398
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "restrict_background"

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "status_header"

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 184
    invoke-static {p0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    return p1

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 303
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    .line 308
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v2, v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "restrict_background"

    .line 314
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 322
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v0, v1

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 328
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAllBillingCyclePreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/BillingCyclePreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateDataUsage()V
    .locals 1

    .line 391
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 392
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

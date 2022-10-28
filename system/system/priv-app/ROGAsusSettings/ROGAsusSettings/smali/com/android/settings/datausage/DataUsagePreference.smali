.class public Lcom/android/settings/datausage/DataUsagePreference;
.super Landroidx/preference/Preference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mIsMobile:Z

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsMobile:Z

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10101e1

    aput v2, v1, v0

    .line 43
    sget v2, Landroidx/preference/R$attr;->preferenceStyle:I

    const v3, 0x101008e

    .line 45
    invoke-static {p1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 43
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method getDataUsageController()Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    .line 102
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "network_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget p0, Lcom/android/settings/R$string;->app_cellular_data_usage:I

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 95
    :cond_0
    iget p0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 97
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 114
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsMobile:Z

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->data_usage_is_empty:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 7

    .line 54
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 55
    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getDataUsageController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p2

    .line 57
    iget-object p3, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p3}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 58
    sget p3, Lcom/android/settings/R$string;->app_cellular_data_usage:I

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p3, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p3

    .line 62
    iget v0, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_usage_template:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p3, p3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object p3, v2, v3

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settingslib/net/DataUsageController;->getHistoricalUsageLevel(Landroid/net/NetworkTemplate;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_1
    return-void
.end method

.method public updateTitle(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mIsMobile:Z

    return-void
.end method

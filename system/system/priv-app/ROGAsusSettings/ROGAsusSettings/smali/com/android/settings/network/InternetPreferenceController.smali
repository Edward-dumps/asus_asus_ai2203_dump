.class public Lcom/android/settings/network/InternetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "InternetPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;


# static fields
.field static sIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSummaryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInternetType:I

.field private mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

.field private mPreference:Landroidx/preference/Preference;

.field private final mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;


# direct methods
.method public static synthetic $r8$lambda$Gd2_QmjVy0KTuFsIFftT3yR1WTY(Lcom/android/settings/network/InternetPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/InternetPreferenceController;->lambda$onAirplaneModeChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RgIPLD-BQpxjDT_KuMJEvSXwlug(Lcom/android/settings/network/InternetPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/InternetPreferenceController;->lambda$onInternetTypeChanged$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_no_internet_unavailable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_no_internet_available:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_signal_4:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/android/settings/R$drawable;->ic_network_cell:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/android/settings/R$drawable;->ic_settings_ethernet:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    .line 77
    sget v6, Lcom/android/settings/R$string;->condition_airplane_title:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    sget v6, Lcom/android/settings/R$string;->networks_available:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    sget v1, Lcom/android/settings/R$string;->to_switch_networks_disconnect_ethernet:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 89
    new-instance v0, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    .line 90
    new-instance v0, Lcom/android/settings/network/InternetUpdater;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    .line 92
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$onAirplaneModeChanged$1()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$onInternetTypeChanged$0()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "internet_settings"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "internet_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 176
    new-instance p1, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/InternetPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInternetTypeChanged(I)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    iput p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    if-eqz v0, :cond_1

    .line 165
    new-instance p1, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/InternetPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 2

    .line 183
    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method updateCellularSummary()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/network/InternetPreferenceController;->updateCellularSummary()V

    return-void

    .line 127
    :cond_2
    sget-object p1, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    return-void
.end method

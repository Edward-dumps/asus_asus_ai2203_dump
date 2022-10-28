.class public Lcom/android/settings/network/MobileNetworkSummaryStatus;
.super Ljava/lang/Object;
.source "MobileNetworkSummaryStatus.java"


# instance fields
.field private mDisableReEntranceUpdate:Z

.field private mIsEuiccConfiguable:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEuiccConfiguableCache:Ljava/lang/Boolean;

.field private mIsPsimDisableSupported:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPsimDisableSupportedCache:Ljava/lang/Boolean;

.field private mSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private mUniqueNameMapping:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUniqueNameMappingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8loh5WhHQ_JJpl5BWQ2mSZrEfPk(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->lambda$update$2(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NExqnNvvqersvhsDBMRaE_uuvCU(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->lambda$update$0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mpk5MOtCA4ckdKmPLglpaph7laQ(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->lambda$update$1(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubscriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance p0, Lcom/android/settings/network/helper/SelectableSubscriptions;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;-><init>(Landroid/content/Context;Z)V

    new-instance p1, Lcom/android/settings/network/helper/SubscriptionGrouping;

    invoke-direct {p1}, Lcom/android/settings/network/helper/SubscriptionGrouping;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->addFinisher(Ljava/util/function/UnaryOperator;)Lcom/android/settings/network/helper/SelectableSubscriptions;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object p0

    .line 159
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;

    .line 160
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 161
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getUniqueNameForDisplay(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private isEuiccConfiguable(Landroid/content/Context;)Z
    .locals 0

    .line 174
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isPhysicalSimDisableSupported(Landroid/content/Context;)Z
    .locals 0

    .line 169
    const-class p0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 170
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$update$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfiguable(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$update$1(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getUniqueNameForDisplay(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$update$2(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isPhysicalSimDisableSupported(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mUniqueNameMapping:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mUniqueNameMappingCache:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MobileNetworkSummaryStatus"

    const-string v3, "Fail to get display names"

    .line 114
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_0
    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mUniqueNameMapping:Ljava/util/concurrent/Future;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mUniqueNameMappingCache:Ljava/util/Map;

    if-nez p0, :cond_1

    return-object v1

    .line 121
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSubscriptionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mSubscriptionList:Ljava/util/List;

    return-object p0
.end method

.method public isEuiccConfigSupport()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsEuiccConfiguable:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsEuiccConfiguableCache:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobileNetworkSummaryStatus"

    const-string v2, "Fail to get euicc config status"

    .line 130
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsEuiccConfiguable:Ljava/util/concurrent/Future;

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsEuiccConfiguableCache:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public isPhysicalSimDisableSupport()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsPsimDisableSupported:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsPsimDisableSupportedCache:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobileNetworkSummaryStatus"

    const-string v2, "Fail to get pSIM disable support"

    .line 144
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsPsimDisableSupported:Ljava/util/concurrent/Future;

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsPsimDisableSupportedCache:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public update(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/settings/network/MobileNetworkSummaryStatus;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mDisableReEntranceUpdate:Z

    const-string v1, "MobileNetworkSummaryStatus"

    if-eqz v0, :cond_1

    const-string p1, "network summary query ignored"

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mDisableReEntranceUpdate:Z

    const-string v0, "network summary query"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)V

    .line 77
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsEuiccConfiguable:Ljava/util/concurrent/Future;

    .line 80
    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)V

    .line 81
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mUniqueNameMapping:Ljava/util/concurrent/Future;

    .line 84
    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mIsPsimDisableSupported:Ljava/util/concurrent/Future;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mSubscriptionList:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 91
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus;->mDisableReEntranceUpdate:Z

    return-void
.end method

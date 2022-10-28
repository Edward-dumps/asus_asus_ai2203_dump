.class public Lcom/android/settings/network/MobileNetworkSummaryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkSummaryController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;
    }
.end annotation


# instance fields
.field private mCallState:[I

.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPhoneCount:I

.field private mPreference:Lcom/android/settings/widget/AddPreference;

.field private mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyCallback:[Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$Qfd_T5tA7vD_ChhIibGzbgjGIg4(Lcom/android/settings/network/MobileNetworkSummaryController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZsCTK-0E2FfcMg430v774JcE-w(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/widget/AddPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$3(Lcom/android/settings/widget/AddPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9LaDwYHGvbK83bUA2XD-Hsfkbo(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$1(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b68eCQwsxO3eDcITZJJa_lGCmsU(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$onSubscriptionsChanged$6(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fo4bAV1yV7Ivi--aWVT3DqYGtyY(Lcom/android/settings/network/MobileNetworkSummaryController;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$getSummaryForProviderModel$0(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jVanGiy73oyHBB2K6OQtc03B9-Q(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$4(Ljava/util/List;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lRN6lIBK0gu2nMZMXWV4tN6eHSw(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$onAirplaneModeChanged$5(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-direct {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPhoneCount:I

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 98
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 99
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    .line 100
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_0

    .line 102
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 103
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/MobileNetworkSummaryController;)[I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mCallState:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/MobileNetworkSummaryController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method private getPhoneTelephonyCallback(I)Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyCallback:[Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;I)V

    aput-object v1, v0, p1

    .line 328
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyCallback:[Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getSummaryForProviderModel(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda7;

    .line 207
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    .line 208
    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string p1, ", "

    .line 209
    invoke-static {p1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private initPreference()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v1}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->isCallStateIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private isCallStateIdle()Z
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mCallState:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    .line 334
    :goto_0
    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mCallState:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 335
    aget v3, v3, v2

    if-eqz v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCallStateIdle = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileNetSummaryCtlr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$getSummaryForProviderModel$0(I)Ljava/lang/CharSequence;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getDisplayName(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAirplaneModeChanged$5(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method private synthetic lambda$onSubscriptionsChanged$6(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 303
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method private synthetic lambda$update$1(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->initPreference()V

    return-void
.end method

.method private synthetic lambda$update$2(Landroidx/preference/Preference;)Z
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$update$3(Lcom/android/settings/widget/AddPreference;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    return-void
.end method

.method private synthetic lambda$update$4(Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 3

    .line 264
    invoke-direct {p0, p2}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    const/4 p2, 0x0

    .line 266
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    .line 267
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 268
    invoke-virtual {p2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isPhysicalSimDisableSupport()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    .line 275
    invoke-static {p0, p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V

    return v0

    .line 269
    :cond_1
    :goto_0
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method private logPreferenceClick(Landroidx/preference/Preference;)V
    .locals 2

    .line 213
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 214
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    return-void
.end method

.method private startAddSimFlow()V
    .locals 3

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.euicc.extra.FORCE_PROVISION"

    const/4 v2, 0x1

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_0
    return-void

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v3}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setAddWidgetEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v3, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 262
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 263
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 280
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const-class v0, Lcom/android/settings/network/MobileNetworkListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AddPreference;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "mobile_network_list"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->mobile_network_summary_add_a_network:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 161
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SIM "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    .line 163
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getDisplayName(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 168
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 172
    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isPhysicalSimDisableSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->mobile_network_tap_to_activate:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v1

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isProviderModelEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    invoke-direct {p0, v0}, Lcom/android/settings/network/MobileNetworkSummaryController;->getSummaryForProviderModel(Ljava/util/List;)Ljava/lang/CharSequence;

    .line 181
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 182
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$plurals;->mobile_network_summary_count:I

    new-array v7, v4, [Ljava/lang/Object;

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 182
    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v5}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v5

    :try_start_1
    const-string v6, "MobileNetSummaryCtlr"

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSummary() info.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->data_usage_list_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_3

    .line 190
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_8

    .line 191
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 194
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 2

    .line 296
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    const/4 v0, 0x0

    .line 135
    :goto_0
    iget v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyCallback:[Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPhoneCount:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mCallState:[I

    .line 113
    new-array v2, v1, [Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    iput-object v2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyCallback:[Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 115
    :goto_0
    iget v2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: subId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MobileNetSummaryCtlr"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/network/MobileNetworkSummaryController;->getPhoneTelephonyCallback(I)Lcom/android/settings/network/MobileNetworkSummaryController$PhoneTelephonyCallback;

    move-result-object v4

    .line 121
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

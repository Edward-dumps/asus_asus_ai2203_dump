.class public Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DualWifiDetailPreferenceController2.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;,
        Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;,
        Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_EAP_SIM_SUBSCRIPTION_PREF:Ljava/lang/String; = "eap_sim_subscription"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"

.field static final KEY_WIFI_TYPE_PREF:Ljava/lang/String; = "type"


# instance fields
.field private mCarrierIdAsyncQueryHandler:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

.field private final mClock:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsageSummaryPref:Landroidx/preference/Preference;

.field private mDnsPref:Landroidx/preference/Preference;

.field private final mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private final mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field private mEapSimSubscriptionPref:Landroidx/preference/Preference;

.field private mForgetButton:Landroid/widget/Button;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mIpv6AddressPref:Landroidx/preference/Preference;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mQrCodeView:Landroid/widget/ImageView;

.field private mRssiSignalLevel:I

.field private mRxLinkSpeedPref:Landroidx/preference/Preference;

.field private mSecurityPref:Landroidx/preference/Preference;

.field mShowX:Z

.field private mSignInButton:Landroid/widget/Button;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mSubnetPref:Landroidx/preference/Preference;

.field mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTxLinkSpeedPref:Landroidx/preference/Preference;

.field private mTypePref:Landroidx/preference/Preference;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$KkShoQ9hI8DwDIMz7_4Vu41d8V4(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->lambda$showConfirmForgetDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DualWifiDetailsPrefCtrl2"

    const/4 v1, 0x3

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lasus/net/vicewifi/WifiViceManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;)V
    .locals 2

    .line 322
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 197
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 198
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 230
    new-instance v0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$1;-><init>(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 324
    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 325
    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setListener(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;)V

    .line 326
    iput-object p2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 327
    iput-object p4, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 328
    iput-object p5, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    .line 329
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    .line 330
    iput-object p7, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 331
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 332
    iput-object p8, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 333
    iput-object p9, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;

    .line 334
    iput-object p10, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mClock:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;

    .line 336
    iput-object p6, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 337
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroidx/preference/Preference;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroid/net/Network;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroid/net/LinkProperties;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshEntityHeader()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshIpLayerInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-object p0
.end method

.method private canShareNetwork()Z
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canShare()Z

    move-result p0

    return p0
.end method

.method private canSignIntoNetwork()Z
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSignIn()Z

    move-result p0

    return p0
.end method

.method private forgetNetwork()V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->showConfirmForgetDialog()V

    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V

    .line 994
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mainForget(Landroid/net/wifi/WifiConfiguration;)V

    .line 997
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 999
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x89

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1000
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private getCaptivePortalVenueInfoUrl()Landroid/net/Uri;
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 425
    :cond_1
    invoke-virtual {p0}, Landroid/net/CaptivePortalData;->getVenueInfoUrl()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getMacAddressTitle()I
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 819
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 820
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_randomized_mac_address_title:I

    goto :goto_0

    .line 821
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_randomized_mac_address_disconnected_title:I

    :goto_0
    return p0

    .line 823
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_device_mac_address_title:I

    return p0
.end method

.method private getWifiStandardTypeString(I)I
    .locals 1

    .line 804
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wifi Type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualWifiDetailsPrefCtrl2"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 807
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_type_11AX:I

    return p0

    .line 809
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_type_11AC:I

    return p0

    .line 811
    :cond_2
    sget p0, Lcom/android/settings/R$string;->wifi_type_11N:I

    return p0
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 0

    .line 948
    :try_start_0
    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->getPrefixMaskAsInet4Address(I)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$showConfirmForgetDialog$0(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1027
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V

    .line 1028
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    .line 1029
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 1030
    iget-object p2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1031
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 1030
    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->forgetNetworkForMainWifi(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1033
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove Passpoint configuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualWifiDetailsPrefCtrl2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1036
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 1035
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1037
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private mainForget(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1011
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-static {v0, p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1017
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1018
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1
    return-void
.end method

.method public static newInstance(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lasus/net/vicewifi/WifiViceManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;
    .locals 12

    .line 305
    new-instance v11, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;

    new-instance v9, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;

    invoke-direct {v10}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;-><init>()V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lasus/net/vicewifi/WifiViceManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$Clock;)V

    return-object v11
.end method

.method private refreshButtons()V
    .locals 5

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->canForgetNetwork()Z

    move-result v0

    .line 837
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    move-result v1

    .line 838
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canConnect()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 839
    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canDisconnect()Z

    move-result v2

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->canShareNetwork()Z

    .line 857
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mForgetButton:Landroid/widget/Button;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 858
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignInButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private refreshEapSimSubscription()V
    .locals 12

    .line 713
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 719
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 722
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 726
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 729
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 730
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 731
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    .line 733
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 734
    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 736
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 737
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 743
    :cond_4
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v8, v5, :cond_3

    .line 744
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 745
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 751
    :cond_5
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v2, v5, :cond_6

    .line 752
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->wifi_no_related_sim_card:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 757
    :cond_6
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    if-nez v2, :cond_7

    .line 758
    new-instance v2, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;-><init>(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;Landroid/content/Context;Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$1;)V

    iput-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    .line 760
    :cond_7
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    invoke-virtual {v2, v3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 761
    iget-object v4, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "carrier_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    new-array v10, v3, [Ljava/lang/String;

    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 766
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v10, v1

    const/4 v11, 0x0

    const-string v9, "carrier_id=?"

    .line 761
    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private refreshEntityHeader()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private refreshFrequency()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 646
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 652
    :cond_0
    iget v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->frequencyMhz:I

    const/16 v2, 0x960

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_1

    .line 655
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_band_5ghz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x1725

    if-lt v0, v2, :cond_3

    const/16 v2, 0x1bd5

    if-ge v0, v2, :cond_3

    .line 659
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_band_6ghz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 662
    :cond_3
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 663
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 665
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected frequency "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualWifiDetailsPrefCtrl2"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private refreshIpLayerInfo()V
    .locals 9

    .line 889
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 903
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 906
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 907
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 908
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 909
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 910
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 916
    :cond_3
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 917
    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 918
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_4

    .line 919
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 925
    :cond_5
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v7, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda1;

    .line 926
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 927
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 930
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v6}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 932
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 933
    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 936
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 937
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 939
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 942
    :cond_6
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void

    .line 891
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 892
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 893
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 896
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshMacAddress()V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 778
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->getMacAddressTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "02:00:00:00:00:00"

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 783
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshPage()V
    .locals 2

    const-string v0, "DualWifiDetailsPrefCtrl2"

    const-string v1, "Update UI!"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshEntityHeader()V

    .line 556
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshButtons()V

    .line 559
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshRssiViews()V

    .line 561
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshFrequency()V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshSecurity()V

    .line 565
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshTxSpeed()V

    .line 567
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshRxSpeed()V

    .line 569
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshIpLayerInfo()V

    .line 571
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshSsid()V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshEapSimSubscription()V

    .line 575
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshMacAddress()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshWifiType()V

    .line 579
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshQrCodeView()V

    return-void
.end method

.method private refreshQrCodeView()V
    .locals 1

    .line 1268
    invoke-static {}, Lcom/android/settings/Utils;->isCustomizeForSG()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1273
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mQrCodeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mQrCodeView:Landroid/widget/ImageView;

    .line 1278
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->setQrCode(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1279
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mQrCodeView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshRssiViews()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 588
    iput v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRssiSignalLevel:I

    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    .line 594
    iget v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRssiSignalLevel:I

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mShowX:Z

    if-ne v2, v1, :cond_1

    return-void

    .line 597
    :cond_1
    iput v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 598
    iput-boolean v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mShowX:Z

    .line 599
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$IconInjector;->getIcon(ZI)Landroid/graphics/drawable/Drawable;

    .line 613
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRssiSignalLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshRxSpeed()V
    .locals 5

    .line 691
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 692
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 698
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 699
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->rx_link_speed:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 700
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 699
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 693
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshSecurity()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshSsid()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 708
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private refreshTxSpeed()V
    .locals 5

    .line 678
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 679
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 685
    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->tx_link_speed:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 687
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 686
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 680
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshWifiType()V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 790
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 794
    :cond_0
    iget v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->getWifiStandardTypeString(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 796
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 797
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 799
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private setQrCode(Landroid/widget/ImageView;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1225
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1226
    invoke-static {v1, v2, v3}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 1232
    :cond_0
    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1233
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isSupportWifiDpp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getQrCode()Ljava/lang/String;

    move-result-object v1

    .line 1238
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->qrcode_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1240
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0}, Lcom/android/settings/wifi/qrcode/QrCodeGenerator;->encodeQrCode(Ljava/lang/String;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1241
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 1245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error generatting QR code bitmap "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiDetailsPrefCtrl2"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "connection_header"

    .line 429
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 431
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "status_header"

    .line 433
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    .line 434
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 435
    new-instance p1, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 436
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 438
    invoke-virtual {v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    return-void

    .line 453
    :cond_0
    sget p1, Lcom/android/settings/R$id;->qr_code:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mQrCodeView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 454
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    sget p1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 457
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    sget p1, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSummaryTextView:Landroid/widget/TextView;

    .line 461
    sget p1, Lcom/android/settings/R$id;->forget_button:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mForgetButton:Landroid/widget/Button;

    .line 462
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    sget p1, Lcom/android/settings/R$id;->signin_button:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignInButton:Landroid/widget/Button;

    .line 465
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 1077
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1078
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x3f0

    .line 1077
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1079
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V

    return-void
.end method

.method private updateCaptivePortalButton()Z
    .locals 1

    .line 396
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->getCaptivePortalVenueInfoUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->canSignIntoNetwork()Z

    move-result p0

    return p0

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 827
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 828
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 829
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 831
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private usingDataUsageHeader(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "settings_wifi_details_datausage_header"

    .line 1137
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canForgetNetwork()Z
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canModifyNetwork()Z
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method connectDisconnectNetwork()V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "signal_strength"

    .line 372
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string v0, "tx_link_speed"

    .line 373
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "rx_link_speed"

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 375
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "security"

    .line 376
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    const-string v0, "ssid"

    .line 378
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "eap_sim_subscription"

    .line 379
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 380
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 381
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 382
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    .line 383
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 384
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    const-string v0, "type"

    .line 385
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const-string v0, "ipv6_addresses"

    .line 388
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mForgetButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->forgetNetwork()V

    goto :goto_0

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mSignInButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 1255
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->getCaptivePortalVenueInfoUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1257
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->signIntoNetwork()V

    goto :goto_0

    .line 1259
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1261
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1262
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnectResult(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1168
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_connected_to_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1169
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1168
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1170
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1172
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_not_in_range_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1174
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1176
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1178
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onDisconnectResult(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1188
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1190
    sget v0, Lcom/android/settings/R$string;->wifi_disconnected_from:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 1191
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1190
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1192
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "DualWifiDetailsPrefCtrl2"

    const-string p1, "Disconnect Wi-Fi network failed"

    .line 1195
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onForgetResult(I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "DualWifiDetailsPrefCtrl2"

    const-string v0, "Forget Wi-Fi network failed"

    .line 1205
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1210
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1211
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 533
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 539
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshPage()V

    .line 540
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V
    .locals 2

    .line 1084
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiDialog2;->getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1086
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance v1, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$2;-><init>(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V

    invoke-virtual {v0, p1, v1}, Lasus/net/vicewifi/WifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 1103
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1104
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1108
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 1155
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 1156
    invoke-direct {p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->refreshPage()V

    .line 1159
    iget-object p0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/details/DualWifiNetworkDetailsFragment2;->refreshPreferences()V

    return-void
.end method

.method protected showConfirmForgetDialog()V
    .locals 3

    .line 1024
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->forget:I

    new-instance v2, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;)V

    .line 1025
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->cancel:I

    const/4 v1, 0x0

    .line 1039
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_forget_dialog_title:I

    .line 1040
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->forget_passpoint_dialog_message:I

    .line 1041
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1042
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1043
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method updateNetworkInfo()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 515
    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 516
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 517
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 518
    iget-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 521
    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 522
    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 523
    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 524
    iput-object v0, p0, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_0
    return-void
.end method

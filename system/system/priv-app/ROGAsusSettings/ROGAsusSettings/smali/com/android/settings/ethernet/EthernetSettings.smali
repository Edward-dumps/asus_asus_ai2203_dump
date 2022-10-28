.class public Lcom/android/settings/ethernet/EthernetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EthernetSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectionType:Landroidx/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mDhcpIpAddress:Landroidx/preference/Preference;

.field private mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mEm:Landroid/net/EthernetManager;

.field private mEthernetListener:Landroid/net/EthernetManager$Listener;

.field private mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

.field private final mEthernetStateReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mEthernetSwitchByCode:Ljava/lang/Boolean;

.field private mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mIpConfig:Landroid/net/IpConfiguration;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

.field private mStaticIpConfig:Landroid/net/StaticIpConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 500
    new-instance v0, Lcom/android/settings/ethernet/EthernetSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetSettings$2;-><init>(Lcom/android/settings/ethernet/EthernetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetStateReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    new-instance v0, Lcom/android/settings/ethernet/EthernetSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetSettings$3;-><init>(Lcom/android/settings/ethernet/EthernetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    .line 520
    new-instance v0, Lcom/android/settings/ethernet/EthernetSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetSettings$4;-><init>(Lcom/android/settings/ethernet/EthernetSettings;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 543
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitchByCode:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->readIpConfiguration()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->writeIpConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settingslib/CustomEditTextPreferenceCompat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/Preference;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/ethernet/EthernetSettings;)Ljava/lang/Boolean;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitchByCode:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/ethernet/EthernetSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitchByCode:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/ethernet/EthernetSettings;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetSwitch(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetFields()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->updateDhcpIpAddress()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/ListPreference;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method private getIfaceName()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {p0}, Landroid/net/EthernetManager;->getAvailableInterfaces()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 606
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 484
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 487
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eth_static_ip_address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 488
    sget p0, Lcom/android/settings/R$string;->ethernet_ip_address_not_set:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eth_network_prefix_length"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 490
    sget p0, Lcom/android/settings/R$string;->ethernet_network_prefix_length_not_set:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eth_gateway"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 492
    sget p0, Lcom/android/settings/R$string;->ethernet_gateway_not_set:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 493
    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eth_dns1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 494
    sget p0, Lcom/android/settings/R$string;->ethernet_dns1_not_set:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 495
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "eth_dns2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 496
    sget p0, Lcom/android/settings/R$string;->ethernet_dns2_not_set:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private readIpConfiguration()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getIfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    .line 291
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->showStaticIpSettings(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->showStaticIpSettings(Z)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_6

    .line 298
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->inet4AddressToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 301
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->inet4AddressToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 311
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->inet4AddressToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 315
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 317
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_6

    .line 318
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetUtils;->inet4AddressToString(Ljava/net/Inet4Address;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->updateDhcpIpAddress()V

    :cond_7
    :goto_1
    return-void
.end method

.method private setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 476
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showStaticIpSettings(Z)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 269
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 270
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 271
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 272
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 273
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 275
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 276
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 277
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 278
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 279
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 280
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method private updateDhcpIpAddress()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ethernet/EthernetSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/ethernet/EthernetSettings$7;-><init>(Lcom/android/settings/ethernet/EthernetSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEthernetFields()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-nez v1, :cond_2

    goto :goto_2

    .line 570
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ethernet/EthernetSettings$6;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/ethernet/EthernetSettings$6;-><init>(Lcom/android/settings/ethernet/EthernetSettings;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateEthernetSwitch(I)V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetUtils;->getEthernetIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ethernet/EthernetSettings$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ethernet/EthernetSettings$5;-><init>(Lcom/android/settings/ethernet/EthernetSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private writeIpConfiguration()V
    .locals 10

    const-string v0, "0.0.0.0/24"

    .line 333
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    if-eqz v1, :cond_11

    .line 337
    invoke-virtual {v1}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v1, 0x1

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    :goto_0
    move v2, v1

    .line 348
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 349
    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/ethernet/EthernetUtils;->strToInet4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    .line 352
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v5, :cond_4

    .line 353
    new-instance v5, Landroid/net/StaticIpConfiguration;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v5, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 357
    :cond_4
    new-instance v5, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v5}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 358
    invoke-virtual {v6}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 359
    invoke-virtual {v6}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 360
    invoke-virtual {v6}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 361
    invoke-virtual {v6}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 365
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 366
    invoke-virtual {v7}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    const/16 v7, 0x20

    if-gt v6, v7, :cond_5

    .line 368
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v3, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v7}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 372
    :catch_1
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iget-object v8, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 378
    :catch_2
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v7}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_6

    .line 382
    :try_start_3
    invoke-static {v3, v6}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v6

    .line 383
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 384
    array-length v7, v6

    sub-int/2addr v7, v1

    aput-byte v1, v6, v7

    .line 385
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 390
    :cond_6
    :try_start_4
    invoke-static {v7}, Lcom/android/settings/ethernet/EthernetUtils;->strToInet4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 391
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v6

    if-nez v6, :cond_7

    .line 392
    invoke-virtual {v5, v1}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 396
    :catch_3
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 402
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iget-object v7, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_5

    .line 404
    :cond_8
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->strToInet4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 406
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 411
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->strToInet4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 414
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_a
    invoke-virtual {v5, v6}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_b

    .line 420
    new-instance v1, Landroid/net/LinkAddress;

    invoke-direct {v1, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 424
    :cond_b
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 427
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    if-nez v0, :cond_c

    .line 428
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    :cond_c
    if-nez v2, :cond_d

    .line 432
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 434
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeIpConfiguration set useDhcp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EthernetSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    if-eqz v2, :cond_e

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_6

    :cond_e
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_6
    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v4, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    :goto_7
    invoke-virtual {v0, v4}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->getIfaceName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mIpConfig:Landroid/net/IpConfiguration;

    invoke-virtual {v0, v1, p0}, Landroid/net/EthernetManager;->setConfiguration(Ljava/lang/String;Landroid/net/IpConfiguration;)V

    return-void

    :goto_8
    if-nez v3, :cond_10

    .line 420
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 424
    :cond_10
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 425
    throw v1

    :cond_11
    :goto_9
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 450
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-nez p1, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "eth_network_prefix_length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 454
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetUtils;->validateNetPrefixConfigFields(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ethernet/EthernetSettings;->setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/ethernet/EthernetSettings;->setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetUtils;->validateIpConfigFields(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 461
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ethernet/EthernetSettings;->setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/ethernet/EthernetSettings;->setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3b6

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    sget v0, Lcom/android/settings/R$xml;->ethernet_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 99
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    const-string v0, "ethernet"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    .line 100
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCr:Landroid/content/ContentResolver;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 104
    new-instance v0, Lcom/android/settings/ethernet/EthernetSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetSettings$1;-><init>(Lcom/android/settings/ethernet/EthernetSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 124
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/net/EthernetManager;->getEthernetState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetSwitch(I)V

    :cond_0
    const-string p1, "eth_policy"

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    .line 129
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "eth_conn_type"

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mConnectionType:Landroidx/preference/ListPreference;

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string p1, "eth_dhcp_ip_address"

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDhcpIpAddress:Landroidx/preference/Preference;

    const-string p1, "eth_static_ip_address"

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mStaticIpAddress:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 138
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "eth_network_prefix_length"

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkPrefixLength:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 141
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "eth_gateway"

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mGateway:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 144
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "eth_dns1"

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns1:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 147
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "eth_dns2"

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mDns2:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 150
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetFields()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 197
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeListener(Landroid/net/EthernetManager$Listener;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 240
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "eth_conn_type"

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 245
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_1

    move v3, v1

    .line 247
    :catch_0
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ethernet/EthernetSettings;->showStaticIpSettings(Z)V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->writeIpConfiguration()V

    goto :goto_0

    .line 250
    :cond_2
    instance-of v2, p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v2, :cond_4

    const-string v2, "eth_network_prefix_length"

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetUtils;->validateNetPrefixConfigFields(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    return v3

    .line 257
    :cond_3
    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->writeIpConfiguration()V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetSettings;->handleEmptyField(Lcom/android/settingslib/CustomEditTextPreferenceCompat;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 207
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eth_conn_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eth_policy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 210
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {p0, v1}, Landroid/net/EthernetManager;->setEthernetSleepPolicy(I)Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {p0, v2}, Landroid/net/EthernetManager;->setEthernetSleepPolicy(I)Z

    :cond_2
    :goto_0
    return v1

    .line 218
    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    if-eqz v0, :cond_4

    .line 219
    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mForegroundEditTextPreference:Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/android/settings/ethernet/EthernetSettings;->setDialogPositiveEnabled(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Z)V

    :cond_4
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->addListener(Landroid/net/EthernetManager$Listener;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 164
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetSwitch(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetFields()V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetSleepPolicy()I

    move-result v0

    if-nez v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetPolicy:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetSettings;->readIpConfiguration()V

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings;->mEthernetStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.action.ETHERNET_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

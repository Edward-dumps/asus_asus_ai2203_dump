.class public Lcom/android/settings/dualwifi/DualWifiConfigController2;
.super Ljava/lang/Object;
.source "DualWifiConfigController2.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;


# instance fields
.field protected REQUEST_INSTALL_CERTS:I

.field private final mActiveSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBgColor:I

.field private final mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private final mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field mDualWifiEntrySecurity:I

.field private final mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapOcspSpinner:Landroid/widget/Spinner;

.field mEapSimSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHiddenWarningView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field mInstallCertsString:Ljava/lang/String;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLastShownEapMethod:I

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacySettingsSpinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field mSecurityInPosition:[Ljava/lang/Integer;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShareThisWifiCheckBox:Landroid/widget/CheckBox;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mTextColor:I

.field private mThemeColor:I

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$4q-K25Fj-JdWpNKTBNiHM58MQt8(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->lambda$loadCertificates$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fwPJG7WJMlp5X_sKC3RLB8Bj-vQ(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->lambda$loadSims$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ytTp1qO0q21tsKW2WK1aRLezP9k(Lcom/android/settings/dualwifi/DualWifiConfigController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->lambda$afterTextChanged$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 131
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;Landroid/view/View;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 143
    iput v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->REQUEST_INSTALL_CERTS:I

    .line 195
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 196
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 198
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 219
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    .line 220
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    .line 221
    iput-object p3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 222
    invoke-interface {p1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    .line 225
    invoke-static {p1}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 226
    invoke-direct {p0, p3, p4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->initDualWifiConfigController2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;Landroid/view/View;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;ILasus/net/vicewifi/WifiViceManager;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 143
    iput v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->REQUEST_INSTALL_CERTS:I

    .line 195
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 196
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 198
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 232
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    .line 234
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    .line 235
    iput-object p3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 236
    invoke-interface {p1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    .line 237
    iput-object p5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 238
    invoke-direct {p0, p3, p4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->initDualWifiConfigController2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/widget/TextView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns1View:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/DualWifiConfigController2;)Landroid/content/Context;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 2

    .line 453
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->wifi_dialog_row:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 454
    sget v0, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 455
    sget p2, Lcom/android/settings/R$id;->value:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private configureSecuritySpinner()V
    .locals 8

    .line 1767
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-interface {v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setTitle(I)V

    .line 1769
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSsidView:Landroid/widget/TextView;

    .line 1770
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1771
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->security:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 1772
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1774
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const v1, 0x1090009

    .line 1776
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1777
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1781
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1782
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1783
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->isEnhancedOpenSupported()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 1784
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_owe:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1785
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1787
    :goto_0
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_wep:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1788
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    .line 1789
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1790
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1791
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->isWpa3SaeSupported()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    .line 1792
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_sae:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1793
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1794
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_eap_wpa_wpa2:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1795
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v5, v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1796
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_eap_wpa3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1797
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v5, 0x1

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    goto :goto_1

    .line 1799
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_eap:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1800
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    move v3, v6

    .line 1802
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->isWpa3SuiteBSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1803
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_eap_suiteb:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1804
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 1807
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1809
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showIpConfigFields()V

    .line 1812
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showProxyFields()V

    .line 1813
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_field:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1817
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1819
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAdvancedOptionAccessibilityString()V

    .line 1821
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;
    .locals 3

    .line 1900
    array-length p0, p1

    new-array p0, p0, [Landroid/text/SpannableString;

    const/4 v0, 0x0

    .line 1901
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1902
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    .line 1903
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1902
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 893
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;
    .locals 1

    .line 1610
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2$2;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;Landroid/widget/TextView;)V

    return-object v0
.end method

.method private getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1854
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    .line 1855
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1854
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1874
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1875
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 1877
    sget v1, Lcom/android/settings/R$array;->wifi_eap_method_target_strings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1879
    sget v2, Lcom/android/settings/R$array;->wifi_eap_method_tts_strings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1883
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1887
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;

    move-result-object p1

    .line 1891
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1893
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private hideSoftKeyboard(Landroid/os/IBinder;)V
    .locals 1

    .line 1909
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 1911
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initDualWifiConfigController2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurity()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    .line 245
    iput p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMode:I

    .line 247
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mThemeColor:I

    .line 250
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mTextColor:I

    .line 251
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mBgColor:I

    .line 253
    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mLevels:[Ljava/lang/String;

    .line 254
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_eap_sim_based_auth_supported"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 254
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries_with_sim_auth:I

    invoke-direct {p0, p2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 256
    :cond_2
    :goto_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 262
    :goto_2
    sget p2, Lcom/android/settings/R$array;->wifi_ttls_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    .line 264
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    .line 265
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_multiple_cert_added:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    .line 266
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    .line 267
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    .line 268
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 269
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_install_credentials:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    .line 272
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 273
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 275
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 276
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->shared:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 277
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->metered_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 278
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 279
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 280
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p2}, Lasus/net/vicewifi/WifiViceManager;->isConnectedMacRandomizationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 281
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings_fields:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 282
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_3
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_warning:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    .line 287
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    .line 286
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->share_this_wifi:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    new-array v1, v2, [Ljava/lang/Integer;

    .line 291
    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    .line 293
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez v1, :cond_5

    .line 294
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->configureSecuritySpinner()V

    .line 295
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 300
    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 301
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->share_wifi_settings_field:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 310
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    .line 311
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 312
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 313
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 317
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 318
    invoke-static {v5}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v5

    .line 319
    iget-object v6, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 321
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_7

    .line 322
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 327
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 328
    sget v6, Lcom/android/settings/R$string;->wifi_ip_address:I

    .line 329
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-direct {p0, p2, v6, v5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_6
    move v5, v4

    goto :goto_4

    .line 332
    :cond_7
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move v5, v0

    .line 335
    :goto_4
    iget-object v6, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 336
    iget-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v6, :cond_8

    move v5, v4

    .line 340
    :cond_8
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    .line 341
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_9

    .line 342
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    move v5, v4

    goto :goto_6

    .line 344
    :cond_9
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_a

    .line 345
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 348
    :cond_a
    iget-object v6, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 350
    :goto_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 351
    sget v6, Lcom/android/settings/R$string;->passpoint_label:I

    iget-object v7, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->passpoint_content:I

    .line 352
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-direct {p0, p2, v6, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_7

    :cond_b
    move v5, v0

    .line 357
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 358
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    if-eq v1, v3, :cond_d

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 359
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMode:I

    if-eqz v1, :cond_11

    .line 361
    :cond_e
    invoke-virtual {p0, v4, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showSecurityFields(ZZ)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showIpConfigFields()V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showProxyFields()V

    .line 364
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    .line 365
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-nez v5, :cond_f

    .line 368
    iget-object v6, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAdvancedOptionAccessibilityString()V

    .line 373
    :cond_f
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v5, :cond_10

    move v5, v0

    goto :goto_8

    :cond_10
    move v5, v2

    .line 374
    :goto_8
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_11
    iget v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMode:I

    if-ne v1, v3, :cond_12

    .line 378
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_12
    if-ne v1, v4, :cond_13

    .line 380
    sget v1, Lcom/android/settings/R$string;->wifi_signal:I

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSignalString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v3}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 381
    sget v1, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v3, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 384
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSignalString()Ljava/lang/String;

    move-result-object v1

    .line 386
    iget-object v5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v5}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v5

    if-nez v5, :cond_14

    if-eqz v1, :cond_14

    .line 388
    sget v4, Lcom/android/settings/R$string;->wifi_signal:I

    invoke-direct {p0, p2, v4, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 389
    sget v1, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v4, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 390
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_14
    if-eqz v1, :cond_15

    .line 393
    sget v5, Lcom/android/settings/R$string;->wifi_signal:I

    invoke-direct {p0, p2, v5, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 396
    :cond_15
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 397
    iget v5, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->linkSpeedMbps:I

    if-ltz v5, :cond_16

    .line 398
    sget v5, Lcom/android/settings/R$string;->wifi_speed:I

    sget v6, Lcom/android/settings/R$string;->link_speed:I

    .line 399
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->linkSpeedMbps:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    .line 398
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_16
    if-eqz v1, :cond_1a

    .line 402
    iget v1, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->frequencyMhz:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1a

    const/4 v4, 0x0

    const/16 v5, 0x960

    if-lt v1, v5, :cond_17

    const/16 v5, 0x9c4

    if-ge v1, v5, :cond_17

    .line 408
    sget v1, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_17
    const/16 v5, 0x1324

    if-lt v1, v5, :cond_18

    const/16 v5, 0x170c

    if-ge v1, v5, :cond_18

    .line 411
    sget v1, Lcom/android/settings/R$string;->wifi_band_5ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_18
    const/16 v5, 0x1725

    if-lt v1, v5, :cond_19

    const/16 v5, 0x1bd5

    if-ge v1, v5, :cond_19

    .line 414
    sget v1, Lcom/android/settings/R$string;->wifi_band_6ghz:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 416
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected frequency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DualWifiConfigController2"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    if-eqz v4, :cond_1a

    .line 419
    sget v1, Lcom/android/settings/R$string;->wifi_frequency:I

    invoke-direct {p0, p2, v1, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 423
    :cond_1a
    sget v1, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 424
    invoke-virtual {v4, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 425
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :goto_a
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 428
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p2

    if-eq p2, v3, :cond_1b

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 429
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 430
    :cond_1b
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_forget:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 436
    :cond_1c
    :goto_b
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 438
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    sget v0, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 439
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p1}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->enableSubmitIfAppropriate()V

    .line 444
    :cond_1d
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->l_wifidialog:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 447
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 448
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->tintViews(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 841
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 843
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 844
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 846
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 847
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 848
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 855
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    .line 856
    iput-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v0, v1, :cond_3

    .line 857
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 858
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 859
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 865
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v5, v3

    .line 868
    :catch_1
    sget v2, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_1
    if-nez v2, :cond_2

    const-string v2, ","

    .line 872
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 871
    invoke-static {v0, v5, v2}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 876
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 877
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 878
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 882
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    .line 886
    :cond_5
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_6
    :goto_2
    return v1
.end method

.method private synthetic lambda$afterTextChanged$2()V
    .locals 0

    .line 1589
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1590
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method private static synthetic lambda$loadCertificates$1(Ljava/lang/String;)Z
    .locals 5

    .line 1542
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1543
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$loadSims$0(I)[Ljava/lang/String;
    .locals 0

    .line 1512
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private removeEmojis(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1935
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1938
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    if-ge v1, v2, :cond_1

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1940
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 1944
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private setAccessibilityDelegateForSecuritySpinners()V
    .locals 2

    .line 1181
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiConfigController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2$1;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;)V

    .line 1193
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1194
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1195
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1196
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1197
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAdvancedOptionAccessibilityString()V
    .locals 2

    .line 1915
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1916
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiConfigController2$3;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2$3;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 1

    .line 1322
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOcspInvisible()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 1

    .line 1326
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1572
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 1573
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1574
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 0

    .line 1471
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1473
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5

    .line 1224
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1279
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPhase2Invisible()V

    .line 1280
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1281
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setCaCertInvisible()V

    .line 1282
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setOcspInvisible()V

    .line 1283
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setDomainInvisible()V

    .line 1284
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setUserCertInvisible()V

    .line 1285
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPasswordInvisible()V

    .line 1286
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1239
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPhase2Invisible()V

    .line 1240
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setCaCertInvisible()V

    .line 1241
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setOcspInvisible()V

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setDomainInvisible()V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1244
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setUserCertInvisible()V

    .line 1245
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1267
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_0

    .line 1268
    iput-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1269
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1271
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setUserCertInvisible()V

    .line 1274
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1248
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPhase2Invisible()V

    .line 1250
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAnonymousIdentInvisible()V

    .line 1251
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPasswordInvisible()V

    .line 1252
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1256
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v3, :cond_1

    .line 1257
    iput-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1258
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1260
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1261
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showPeapFields()V

    .line 1263
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setUserCertInvisible()V

    .line 1290
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 1291
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1292
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1295
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setDomainInvisible()V

    .line 1299
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setOcspInvisible()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 4

    .line 1367
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1373
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1374
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1376
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ipaddress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1377
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1378
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->gateway:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    .line 1379
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1380
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->network_prefix_length:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1383
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    .line 1382
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1384
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns1View:Landroid/widget/TextView;

    .line 1385
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIpConfigFieldsTextWatcher(Landroid/widget/TextView;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1386
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns2View:Landroid/widget/TextView;

    .line 1387
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    .line 1390
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1393
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    .line 1395
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1394
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1397
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1396
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    :cond_2
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1401
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    :cond_3
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1405
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1406
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1409
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1414
    :cond_5
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showPeapFields()V
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1316
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1308
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setPasswordInvisible()V

    .line 1311
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 5

    .line 1421
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1427
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 1428
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1429
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1430
    sget v1, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v1, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1431
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1432
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_hostname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    .line 1433
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1434
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_port:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    .line 1435
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1436
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_exclusionlist:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1437
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 1440
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1442
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1444
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1445
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1448
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1449
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1450
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1451
    sget v2, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1453
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 1454
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    .line 1455
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 1458
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1460
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1464
    :cond_4
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1465
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    .line 1466
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setVisibility(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private startActivityForInstallCerts()V
    .locals 4

    .line 1743
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1744
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1745
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.certinstaller"

    const-string v3, "com.android.certinstaller.CertInstallerMain"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "certificate_install_usage"

    const-string/jumbo v2, "wifi"

    .line 1746
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1748
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tintViews(Landroid/view/View;)V
    .locals 2

    .line 1951
    :try_start_0
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1952
    check-cast p1, Landroid/widget/Spinner;

    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->tintSpinner(Landroid/widget/Spinner;)V

    goto :goto_1

    .line 1953
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1954
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1955
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1956
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1958
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->tintViews(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1960
    :cond_1
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 1961
    check-cast p1, Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mThemeColor:I

    iget p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mTextColor:I

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintCheckBoxColor(Landroid/widget/CheckBox;II)V

    goto :goto_1

    .line 1962
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 1963
    check-cast p1, Landroid/widget/EditText;

    iget p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mThemeColor:I

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintEditText(Landroid/widget/EditText;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1966
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 900
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 902
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 905
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 906
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 911
    :cond_2
    new-instance v2, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 912
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 913
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 914
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 915
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object p1

    const/4 v2, -0x1

    .line 919
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 920
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 924
    :cond_3
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    goto :goto_2

    .line 922
    :cond_4
    :goto_0
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_network_prefix_length:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :goto_1
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 930
    :catch_0
    :try_start_1
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    goto :goto_1

    .line 927
    :catch_1
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {v4}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    :goto_2
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    .line 937
    :try_start_2
    invoke-static {v0, v2}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 939
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 940
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 945
    :cond_5
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_6

    .line 947
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 949
    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 950
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_1

    .line 952
    :cond_7
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 955
    :catch_2
    :goto_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 959
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 961
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns1View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {v3}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 963
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_9

    .line 965
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 967
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    :goto_4
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 971
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_a

    .line 974
    sget v0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto/16 :goto_1

    .line 976
    :cond_a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_b
    invoke-virtual {p1, v2}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 983
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v1

    :goto_5
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 984
    throw v0

    .line 907
    :cond_c
    :goto_6
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1588
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigController2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->isSubmittable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    .line 1836
    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    return-object p1

    .line 1840
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    .line 1841
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1842
    aget-object v2, p1, v1

    aput-object v2, p0, v1

    move v2, v0

    .line 1843
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 1844
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1845
    aget-object v3, p3, v2

    aput-object v3, p0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1

    .line 1479
    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .line 596
    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 600
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 602
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "DualWifiConfigController2"

    const-string v6, "\""

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 604
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-direct {p0, v2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->removeEmojis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 606
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string p0, "Add network fail, ssid is empty after filter emoji string"

    .line 607
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 610
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 613
    iget-object v6, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add network, original ssid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", config.SSID: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 615
    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v2

    if-nez v2, :cond_4

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v8}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 618
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v8}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 619
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 620
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 623
    :goto_1
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 626
    iget v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v6, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/16 v10, 0x22

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 805
    :pswitch_0
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 806
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 807
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_8

    .line 813
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_8

    :pswitch_2
    const/4 v10, 0x7

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-ne v2, v6, :cond_5

    .line 663
    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    :cond_5
    if-ne v2, v10, :cond_6

    const/16 v2, 0x9

    .line 665
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    .line 667
    :cond_6
    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 669
    :goto_2
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 670
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 671
    iget-object v13, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    .line 672
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v14, "Unknown phase2 method"

    if-eqz v2, :cond_c

    if-eq v2, v9, :cond_7

    goto/16 :goto_3

    :cond_7
    if-eqz v13, :cond_b

    if-eq v13, v7, :cond_a

    if-eq v13, v9, :cond_9

    if-eq v13, v12, :cond_8

    .line 715
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 712
    :cond_8
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 709
    :cond_9
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 706
    :cond_a
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 703
    :cond_b
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_c
    if-eqz v13, :cond_11

    if-eq v13, v7, :cond_10

    if-eq v13, v9, :cond_f

    if-eq v13, v12, :cond_e

    if-eq v13, v8, :cond_d

    .line 695
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 692
    :cond_d
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 689
    :cond_e
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 686
    :cond_f
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 683
    :cond_10
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 680
    :cond_11
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 723
    :goto_3
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    .line 724
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 725
    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_12

    .line 726
    iget-object v9, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    iget-object v10, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 727
    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v9

    iput v9, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 730
    :cond_12
    iget-object v9, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 731
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 732
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 733
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4

    .line 736
    :cond_13
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 737
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v7, "/system/etc/security/cacerts"

    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    .line 738
    :cond_14
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 739
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v1, :cond_17

    .line 740
    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Multiple certs can only be set when editing saved network"

    .line 741
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v7, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 745
    invoke-virtual {v7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 747
    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v7

    .line 744
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    .line 750
    :cond_16
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v9, v7, v4

    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 757
    :cond_17
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 758
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ca_cert ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 760
    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") and ca_path ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 762
    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") should not both be non-null"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_18
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 768
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_5

    .line 770
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 773
    :goto_5
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 774
    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 775
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move-object v1, v3

    .line 780
    :cond_1b
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v2, v8, :cond_1e

    if-eq v2, v11, :cond_1e

    if-ne v2, v6, :cond_1c

    goto :goto_6

    :cond_1c
    if-ne v2, v12, :cond_1d

    .line 785
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 786
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 788
    :cond_1d
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 789
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 790
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_7

    .line 782
    :cond_1e
    :goto_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 783
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 793
    :goto_7
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 796
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 797
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 801
    :cond_1f
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 647
    :pswitch_3
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 648
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 649
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 651
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 653
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 632
    :pswitch_4
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 633
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_23

    .line 634
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 635
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_21

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_21

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_22

    :cond_21
    const-string v1, "[0-9A-Fa-f]*"

    .line 638
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 639
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_8

    .line 641
    :cond_22
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_8

    .line 628
    :pswitch_5
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 820
    :cond_23
    :goto_8
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    .line 821
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 822
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 823
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 824
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 825
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 826
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_24

    .line 827
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 830
    :cond_24
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_25

    .line 833
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 832
    invoke-static {p0}, Lcom/android/settings/dualwifi/details/DualWifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_25
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 466
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mLevels:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1861
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 1863
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method hideForgetButton()V
    .locals 1

    .line 470
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getForgetButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 473
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideSubmitButton()V
    .locals 1

    .line 477
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 480
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method isSubmittable()Z
    .locals 8

    .line 510
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    if-ne v3, v1, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 514
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->isValidPsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 516
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->isValidSaePassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 519
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSsidView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_5

    .line 521
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-nez v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_7

    .line 524
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 525
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_1

    .line 528
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    .line 530
    :goto_2
    iget v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 534
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_b

    .line 535
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 536
    iget-object v7, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    move v0, v2

    goto :goto_4

    .line 540
    :cond_a
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->l_domain:I

    .line 541
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_b

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 542
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    .line 548
    :cond_b
    :goto_4
    iget v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_c

    if-ne v1, v3, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_user_cert:I

    .line 552
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_d

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 553
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    move v2, v0

    :goto_5
    return v2
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 2

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    const-string p0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 494
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isValidSaePassword(Ljava/lang/String;)Z
    .locals 1

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {v0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->getContext()Landroid/content/Context;

    .line 1529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1530
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1532
    iget-object p4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 1535
    iget-object p4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    iget-object p4, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 1539
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    if-eqz p4, :cond_2

    .line 1540
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p4, Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda2;

    .line 1541
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1548
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1540
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1551
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 p4, 0x6

    if-eq p2, p4, :cond_3

    .line 1553
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 1558
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1559
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 1561
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1565
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1564
    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    .line 1566
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method loadSims()V
    .locals 5

    .line 1484
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1485
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1487
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1493
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1494
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    goto :goto_1

    .line 1498
    :cond_1
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v1, [Ljava/lang/String;

    .line 1503
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_no_sim_card:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1504
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1505
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1506
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void

    .line 1511
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1512
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/dualwifi/DualWifiConfigController2$$ExternalSyntheticLambda1;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1513
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1514
    iget-object v3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1515
    array-length v0, v0

    if-ne v0, v1, :cond_4

    .line 1516
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1669
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->show_password:I

    if-ne v0, v1, :cond_1

    .line 1670
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1671
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_2

    .line 1675
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1677
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    sget v0, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    if-ne p2, v0, :cond_2

    .line 1679
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->hideSoftKeyboard(Landroid/os/IBinder;)V

    const/16 p2, 0x8

    .line 1680
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1681
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1647
    iget-object p3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1649
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1687
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecuritySpinner:Landroid/widget/Spinner;

    const/16 p4, 0x8

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1689
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    .line 1694
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->share_wifi_settings_field:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1700
    invoke-virtual {p0, p5, p5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1707
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    .line 1708
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 1709
    iget p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mLastShownEapMethod:I

    if-eq p2, p1, :cond_8

    .line 1710
    iput p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mLastShownEapMethod:I

    .line 1711
    invoke-virtual {p0, v0, p5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1713
    :cond_1
    iget-object p5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_3

    .line 1714
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1715
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mInstallCertsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1716
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->startActivityForInstallCerts()V

    .line 1718
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showSecurityFields(ZZ)V

    goto :goto_1

    .line 1719
    :cond_3
    iget-object p5, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p5, :cond_4

    .line 1720
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_4

    .line 1721
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showPeapFields()V

    goto :goto_1

    .line 1722
    :cond_4
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_5

    .line 1723
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showProxyFields()V

    goto :goto_1

    .line 1724
    :cond_5
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_7

    .line 1725
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mHiddenWarningView:Landroid/widget/TextView;

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    move p4, v0

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1728
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showIpConfigFields()V

    .line 1730
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showWarningMessagesIfAppropriate()V

    .line 1731
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1658
    iget-object p3, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1660
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mConfigUi:Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected showSecurityFields(ZZ)V
    .locals 15

    move-object v6, p0

    .line 988
    iget v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/16 v1, 0x8

    if-eqz v0, :cond_1b

    const/4 v7, 0x4

    if-ne v0, v7, :cond_0

    goto/16 :goto_9

    .line 993
    :cond_0
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 996
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    .line 997
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 998
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 999
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1000
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1001
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1003
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPasswordView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 1008
    :cond_1
    iget v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-eq v0, v11, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v10, :cond_2

    .line 1011
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1014
    :cond_2
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    if-nez v0, :cond_3

    .line 1020
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1021
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1022
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    .line 1023
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1024
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1025
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1026
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1027
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    .line 1028
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 1029
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1030
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1031
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1032
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    .line 1033
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1035
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setAccessibilityDelegateForSecuritySpinners()V

    move v13, v12

    goto :goto_0

    :cond_3
    move v13, v8

    :goto_0
    if-eqz p1, :cond_7

    .line 1040
    iget v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    if-ne v0, v10, :cond_4

    .line 1041
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1042
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1044
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1045
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    .line 1046
    :cond_4
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mContext:Landroid/content/Context;

    .line 1047
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_eap_sim_based_auth_supported"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1052
    :cond_5
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1054
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1055
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_2

    .line 1048
    :cond_6
    :goto_1
    sget v0, Lcom/android/settings/R$array;->eap_method_without_sim_auth:I

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1049
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1050
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->loadSims()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v14

    .line 1064
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1066
    invoke-virtual {v14}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    .line 1064
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1070
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1072
    invoke-virtual {v14}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1070
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1077
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_8
    if-eqz v13, :cond_1a

    .line 1081
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1082
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1083
    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1084
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1085
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 1086
    iget-object v3, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1087
    iput v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mLastShownEapMethod:I

    .line 1088
    invoke-direct {p0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showEapFieldsByMethod(I)V

    const-string v3, "Invalid phase 2 method "

    const-string v4, "DualWifiConfigController2"

    const/4 v5, 0x2

    if-eqz v1, :cond_e

    if-eq v1, v5, :cond_9

    goto/16 :goto_3

    :cond_9
    if-eq v2, v12, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v7, :cond_a

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1124
    :cond_a
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1121
    :cond_b
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1118
    :cond_c
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1115
    :cond_d
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_e
    if-eq v2, v11, :cond_13

    if-eq v2, v7, :cond_12

    const/4 v1, 0x5

    if-eq v2, v1, :cond_11

    if-eq v2, v10, :cond_10

    if-eq v2, v9, :cond_f

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1105
    :cond_f
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1102
    :cond_10
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1099
    :cond_11
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1096
    :cond_12
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 1093
    :cond_13
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1135
    :goto_3
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v8

    .line 1136
    :goto_4
    iget-object v2, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 1137
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iget-object v3, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mActiveSubscriptionInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 1138
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapSimSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1144
    :cond_15
    :goto_5
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1145
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1147
    :cond_16
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 1149
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1150
    :cond_17
    array-length v1, v0

    if-ne v1, v12, :cond_18

    .line 1151
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v8

    invoke-direct {p0, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1155
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v0

    .line 1156
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1158
    invoke-virtual {v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 1156
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 1162
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1165
    :goto_6
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1166
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1169
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_7

    .line 1171
    :cond_19
    iget-object v1, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1173
    :goto_7
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1176
    :cond_1a
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->showEapFieldsByMethod(I)V

    :goto_8
    return-void

    .line 990
    :cond_1b
    :goto_9
    iget-object v0, v6, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 6

    .line 562
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->no_user_cert_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->no_domain_warning:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ssid_too_long_warning:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 573
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_domain:I

    .line 575
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapDomainView:Landroid/widget/TextView;

    .line 576
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_1
    iget v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mDualWifiEntrySecurity:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 584
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updatePassword()V
    .locals 2

    .line 1755
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1757
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiConfigController2;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    or-int/lit8 p0, p0, 0x1

    .line 1756
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

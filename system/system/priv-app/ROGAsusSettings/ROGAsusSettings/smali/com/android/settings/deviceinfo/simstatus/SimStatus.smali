.class public Lcom/android/settings/deviceinfo/simstatus/SimStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;,
        Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;,
        Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;
    }
.end annotation


# static fields
.field static final CELLULAR_NETWORK_STATE:Ljava/lang/String; = "data_state_value"

.field static final CELL_DATA_NETWORK_TYPE_VALUE_ID:Ljava/lang/String; = "data_network_type_value"

.field static final CELL_VOICE_NETWORK_TYPE_VALUE_ID:Ljava/lang/String; = "voice_network_type_value"

.field static final EID_INFO_LABEL_ID:I

.field static final EID_INFO_VALUE_ID:Ljava/lang/String; = "esim_id_value"

.field static final ICCID_INFO_LABEL_ID:Ljava/lang/String; = "icc_id_label"

.field static final ICCID_INFO_VALUE_ID:Ljava/lang/String; = "icc_id_value"

.field static final IMS_REGISTRATION_STATE_LABEL_ID:Ljava/lang/String; = "ims_reg_state_label"

.field static final IMS_REGISTRATION_STATE_VALUE_ID:Ljava/lang/String; = "ims_reg_state_value"

.field static final MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field static final NETWORK_PROVIDER_VALUE_ID:Ljava/lang/String; = "operator_name_value"

.field static final OPERATOR_INFO_LABEL_ID:Ljava/lang/String; = "latest_area_info_label"

.field static final OPERATOR_INFO_VALUE_ID:Ljava/lang/String; = "latest_area_info_value"

.field static final PHONE_NUMBER_VALUE_ID:Ljava/lang/String; = "number_value"

.field static final ROAMING_INFO_VALUE_ID:Ljava/lang/String; = "roaming_state_value"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field static final SERVICE_STATE_VALUE_ID:Ljava/lang/String; = "service_state_value"

.field static final SIGNAL_STRENGTH_LABEL_ID:Ljava/lang/String; = "signal_strength_label"

.field static final SIGNAL_STRENGTH_VALUE_ID:Ljava/lang/String; = "signal_strength_value"

.field private static mDefaultText:Ljava/lang/String;


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mDataTypeInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private mIsRegisteredListener:Z

.field private mListView:Landroid/widget/ListView;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPreviousServiceState:Landroid/telephony/ServiceState;

.field private mRes:Landroid/content/res/Resources;

.field private final mServiceStateReceiver:Landroid/content/BroadcastReceiver;

.field private mShowLatestAreaInfo:Z

.field private mSlotIndex:I

.field private mStatusbarDataType:[I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field protected mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

.field private mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mbVoiceCapable:Z

.field private mbWifiOnly:Z


# direct methods
.method public static synthetic $r8$lambda$KMDt-Fy9HlXqhteYRZ70Fa6FAPQ(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->lambda$requestForUpdateEid$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vXNhomJgWL9IgsmqDv1J753SNO0(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->lambda$requestForUpdateEid$0(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 130
    sget v0, Lcom/android/settings/R$id;->esim_id_label:I

    sput v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->EID_INFO_LABEL_ID:I

    .line 1231
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$7;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$7;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mIsRegisteredListener:Z

    .line 193
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mPhoneCount:I

    .line 194
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mStatusbarDataType:[I

    .line 205
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbWifiOnly:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbVoiceCapable:Z

    .line 210
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 905
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 1081
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1116
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$5;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1148
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$6;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1281
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$8;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$8;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDataTypeInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/res/Resources;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateDataState(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateNetworkProvider()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/TelephonyDisplayInfo;)Landroid/telephony/TelephonyDisplayInfo;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/widget/TabHost;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDefaultText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)[I
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mStatusbarDataType:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->unregisterImsRegistrationCallback(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatus;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->registerImsRegistrationCallback(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateSubscriptionStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateAreaInfoText()V

    return-void
.end method

.method private bindCellBroadcastService()V
    .locals 4

    .line 499
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getCellBroadcastServicePackage()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    const-string v2, "SimStatus"

    if-eqz v1, :cond_1

    .line 505
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Unable to bind to service"

    .line 508
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "skipping bindService because connection already exists"

    .line 511
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p0

    return-object p0
.end method

.method private getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 974
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 980
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 981
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 982
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p1

    :cond_2
    return p1
.end method

.method private getCellBroadcastServicePackage()Ljava/lang/String;
    .locals 5

    .line 517
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "SimStatus"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastServicePackageName: found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CBS packages"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 526
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 529
    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "getCellBroadcastServicePackageName: "

    if-nez v3, :cond_2

    .line 532
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 535
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    .line 539
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "getCellBroadcastServicePackageName: package name not found"

    .line 543
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDbm(Landroid/telephony/SignalStrength;)I
    .locals 2

    .line 957
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    .line 963
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    .line 964
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 965
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p1

    :cond_2
    return p1
.end method

.method static getNetworkTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_1
    const-string p0, "NR"

    return-object p0

    :pswitch_2
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_3
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_4
    const-string p0, "GSM"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_6
    const-string p0, "CDMA - eHRPD"

    return-object p0

    :pswitch_7
    const-string p0, "LTE"

    return-object p0

    :pswitch_8
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    :pswitch_9
    const-string p0, "iDEN"

    return-object p0

    :pswitch_a
    const-string p0, "HSPA"

    return-object p0

    :pswitch_b
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_c
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_d
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    :pswitch_e
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    :pswitch_f
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    :pswitch_10
    const-string p0, "CDMA"

    return-object p0

    :pswitch_11
    const-string p0, "UMTS"

    return-object p0

    :pswitch_12
    const-string p0, "EDGE"

    return-object p0

    :pswitch_13
    const-string p0, "GPRS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 953
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2

    const-string v0, "SimStatus"

    const-string v1, "getServiceStateString()"

    .line 1130
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1143
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1141
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->radioInfo_service_off:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1139
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->radioInfo_service_out:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1134
    :cond_2
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget p1, Lcom/android/settings/R$string;->radioInfo_service_in:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isIWLANAndNoImsRegistered()Z
    .locals 7

    const-string v0, "isIWLANAndNoImsRegistered(): actualDataNetworkType = "

    const-string v1, "SimStatus"

    const/4 v2, 0x0

    .line 1166
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v3, :cond_0

    const-string p0, "isIWLANAndNoImsRegistered(): mSubscriptionInfo is null,return"

    .line 1167
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1170
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 1171
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 1174
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v4

    .line 1175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    .line 1177
    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v4

    .line 1179
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result p0

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isImsRegistered = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x12

    if-ne v4, v0, :cond_2

    if-nez p0, :cond_2

    move v2, v6

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1188
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isIWLANAndNoImsRegistered(): ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isImsRegistrationStateShowUp()Z
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 889
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 890
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 891
    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "show_ims_registration_status_bool"

    .line 893
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private synthetic lambda$requestForUpdateEid$0(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateEid(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private synthetic lambda$requestForUpdateEid$1()V
    .locals 2

    .line 833
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getEid(I)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 834
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerImsRegistrationCallback(I)V
    .locals 2

    .line 932
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 936
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 937
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to register IMS status for subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStatus"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private resetSignalStrength()V
    .locals 2

    .line 668
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v0, "signal_strength_value"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private unregisterImsRegistrationCallback(I)V
    .locals 1

    .line 945
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 948
    :cond_0
    invoke-static {p1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    .line 949
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mImsRegStateCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {p1, p0}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    return-void
.end method

.method private updateAreaInfoText()V
    .locals 3

    .line 482
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 488
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v2, "latest_area_info_value"

    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    .line 489
    invoke-interface {v0, p0}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 488
    invoke-virtual {v1, v2, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get area info. e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimStatus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDataState(I)V
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isIWLANAndNoImsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 471
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 462
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_suspended:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 459
    :cond_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 465
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_connecting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 468
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 474
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v0, "data_state_value"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateIccidNumber()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 816
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_iccid_in_sim_status_bool"

    .line 818
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "icc_id_value"

    if-nez v0, :cond_1

    .line 824
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->removeSettingFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateImsRegistrationState()V
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isImsRegistrationStateShowUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 902
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v0, "ims_reg_state_value"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->removeSettingFromScreen(Ljava/lang/String;)V

    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 5

    .line 548
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_showAreaUpdateInfoSettings"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 550
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->bindCellBroadcastService()V

    goto :goto_1

    .line 558
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v0, "latest_area_info_value"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->removeSettingFromScreen(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateNetworkProvider()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const-string v1, "operator_name_value"

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNetworkType()V
    .locals 17

    move-object/from16 v0, p0

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-string v2, "data_network_type_value"

    const-string/jumbo v3, "voice_network_type_value"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 680
    invoke-static {v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    .line 681
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 682
    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 688
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 689
    iget-object v6, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    .line 690
    iget-object v7, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v7

    .line 691
    iget-object v8, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {v8}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v8

    .line 695
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isIWLANAndNoImsRegistered()Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v5

    :cond_3
    if-eqz v6, :cond_4

    .line 701
    invoke-static {v6}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v4

    :goto_1
    if-eqz v7, :cond_5

    .line 704
    invoke-static {v7}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v7, 0x5

    if-eq v8, v7, :cond_7

    const/4 v10, 0x3

    if-ne v8, v10, :cond_6

    goto :goto_2

    :cond_6
    move v8, v5

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v8, 0x1

    :goto_3
    const/16 v10, 0xd

    const-string v11, "LTE (4G) & NR (5G)"

    if-ne v6, v10, :cond_8

    if-eqz v8, :cond_8

    move-object v9, v11

    .line 717
    :cond_8
    iget-object v6, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v8, "show_4g_for_lte_data_icon_bool"

    .line 719
    invoke-virtual {v6, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_4

    :cond_9
    move v6, v5

    .line 726
    :goto_4
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v8

    const-string v10, "ro.vendor.asus.phone.dual_nt_sup"

    const/4 v12, -0x1

    if-eqz v8, :cond_a

    const-string v8, "persist.radio.asus.mobile_slot"

    .line 727
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 728
    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_5

    :cond_a
    const-string v8, "persist.vendor.asus.mobile_slot"

    .line 730
    invoke-static {v8, v5}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v5

    .line 731
    invoke-static {v10, v12}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v8

    .line 733
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNetworkType(): dualNtSup = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "SimStatus"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v12, :cond_b

    const/4 v8, 0x4

    .line 737
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNetworkType mSlotIndex = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ,dataSlotId = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ,dataNetworkTypeName = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v10, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mStatusbarDataType:[I

    iget v12, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    aget v14, v10, v12

    const/16 v15, 0x14

    const-string v7, "LTE_CA"

    move-object/from16 v16, v11

    const-string v11, "LTE"

    if-lt v14, v15, :cond_10

    const/4 v14, 0x5

    if-ge v8, v14, :cond_c

    if-eq v5, v12, :cond_d

    :cond_c
    if-lt v8, v14, :cond_10

    .line 740
    :cond_d
    aget v5, v10, v12

    const/16 v8, 0x64

    if-ne v5, v8, :cond_e

    const-string v5, "4G++"

    goto :goto_6

    .line 742
    :cond_e
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    move-object/from16 v5, v16

    goto :goto_6

    :cond_10
    move-object v5, v9

    :goto_6
    const-string v8, "4G"

    if-eqz v6, :cond_12

    .line 751
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v5, v8

    .line 754
    :cond_11
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v4, v8

    .line 761
    :cond_12
    iget-object v9, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 762
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ss = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", show4GForLTE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", dataNetworkTypeName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "4G+"

    if-eqz v5, :cond_13

    .line 763
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    if-eqz v6, :cond_13

    if-eqz v9, :cond_13

    .line 764
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ss.isUsingCarrierAggregation() = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    :cond_13
    if-eqz v5, :cond_14

    .line 768
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v6, :cond_14

    move-object v5, v10

    .line 772
    :cond_14
    iget-object v7, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/settings/AsusTelephonyUtils;->isTrNetwork(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v6, :cond_16

    if-eqz v5, :cond_16

    .line 775
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const-string v5, "4.5G"

    .line 779
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataNetworkTypeName = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 7

    const-string v0, "roaming_state_value"

    if-eqz p1, :cond_4

    .line 788
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 791
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    .line 792
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDataRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimStatus"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->radioInfo_roaming_in:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 796
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->radioInfo_roaming_not:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 797
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbVoiceCapable:Z

    if-eqz v4, :cond_2

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v6, Lcom/android/settings/R$string;->status_voice:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v6, Lcom/android/settings/R$string;->status_data:I

    .line 799
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    move-object p1, v2

    .line 803
    :goto_3
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 806
    :cond_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_roaming_not:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5

    .line 563
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 564
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->resetSignalStrength()V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mPreviousServiceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_1

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_service_off:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_1

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_service_out:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_1

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_service_in:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    :goto_1
    const-string v0, "service_state_value"

    if-nez p1, :cond_5

    const-string p1, "SimStatus"

    const-string v2, "updateServiceState(): serviceState is null"

    .line 592
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    .line 596
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 597
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    .line 599
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->isIWLANAndNoImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 603
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object p1

    .line 607
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbVoiceCapable:Z

    if-eqz v1, :cond_7

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->status_voice:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->status_data:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 613
    :cond_7
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 8

    .line 618
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SimStatus"

    if-nez v0, :cond_0

    const-string p0, "updateSignalStrength:getActivity() is null,return"

    .line 619
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "updateSignalStrength:signalStrength is null,return"

    .line 624
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 631
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 632
    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "show_signal_strength_in_sim_status_bool"

    .line 634
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const-string v3, "signal_strength_value"

    if-nez v0, :cond_3

    const-string p1, "updateSignalStrength:don\'t show signal strength,return"

    .line 639
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->removeSettingFromScreen(Ljava/lang/String;)V

    return-void

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSignalStrength: serviceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 647
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 651
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength signalStrength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 654
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result p1

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ updateSignalStrength signalDbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", signalAsu = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    const/4 v6, 0x0

    if-lt v0, v4, :cond_5

    move v0, v6

    :cond_5
    if-ne p1, v4, :cond_6

    move p1, v6

    .line 662
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- updateSignalStrength signalDbm = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->sim_signal_strength:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    .line 663
    invoke-virtual {p0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private updateSubscriptionStatus()V
    .locals 2

    .line 324
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateNetworkProvider()V

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updatePhoneNumber()V

    .line 330
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 331
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateNetworkType()V

    .line 333
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateIccidNumber()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateImsRegistrationState()V

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCellBroadcastServiceConnection:Lcom/android/settings/deviceinfo/simstatus/SimStatus$CellBroadcastServiceConnection;

    :cond_1
    return-void
.end method

.method protected getEid(I)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 844
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLogicalToPhysicalSlotMapping()Ljava/util/Map;

    move-result-object v0

    .line 845
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, -0x1

    .line 846
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 845
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    .line 851
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    .line 852
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 853
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 855
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getEid()Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 864
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 867
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    move v2, v3

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez p1, :cond_4

    return-object v1

    .line 872
    :cond_4
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2b

    return p0
.end method

.method public initialize()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->requestForUpdateEid()V

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 317
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 318
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    .line 319
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateLatestAreaInfo()V

    .line 320
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateSubscriptionStatus()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 259
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SimStatus"

    const-string v0, "onCreate()"

    .line 260
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus$1;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    .line 262
    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setSettingsPreferenceFragment(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    .line 265
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 266
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 267
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 268
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 269
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 270
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 273
    sget v2, Lcom/android/settings/R$xml;->device_info_sim_status:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 274
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mRes:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 280
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() mSubscriptionInfoList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 288
    invoke-static {v3}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_2
    invoke-static {v0}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 296
    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbWifiOnly:Z

    .line 304
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbVoiceCapable:Z

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() mbWifiOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbWifiOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mbVoiceCapable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mbVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->initialize()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView() mSubscriptionInfoList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1301
    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    goto/16 :goto_2

    .line 1303
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :cond_1
    iput-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1305
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 1306
    sget v0, Lcom/android/settings/R$layout;->icc_lock_tabs:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1307
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1309
    invoke-static {p2, v0, v1, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1310
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 1311
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x1020012

    .line 1313
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    const p1, 0x1020013

    .line 1314
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    const p1, 0x102000a

    .line 1315
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mListView:Landroid/widget/ListView;

    .line 1317
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 1318
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1319
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1321
    :goto_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    .line 1323
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1324
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_2

    goto :goto_1

    .line 1327
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SIM "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, v3, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1329
    :goto_1
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1335
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfoList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView() only one sim inserted, mSlotIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1338
    :cond_5
    iput v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSlotIndex:I

    const-string v0, "onCreateView() no sim inserted, mSlotIndex default use 0"

    .line 1339
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 405
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "SimStatus"

    const-string v1, "onPause()"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mIsRegisteredListener:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 412
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mIsRegisteredListener:Z

    :cond_1
    return-void

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->deinitialize()V

    .line 420
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->unregisterImsRegistrationCallback(I)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDataTypeInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 432
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 352
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SimStatus"

    const-string v1, "onResume()"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->initialize()V

    .line 360
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 361
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 360
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 362
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mTelephonyCallback:Lcom/android/settings/deviceinfo/simstatus/SimStatus$SimStatusDialogTelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->registerImsRegistrationCallback(I)V

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->updateAreaInfoText()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mIsRegisteredListener:Z

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.asus.systemui.action.NOTIFY_DATA_TYPE_INFO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDataTypeInfoReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.asus.systemui.permission.DATA_TYPE_INFO"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.systemui.action.REQUEST_DATA_TYPE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 384
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/16 v1, 0xd

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 390
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ListView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mServiceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1348
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected requestForUpdateEid()V
    .locals 1

    .line 832
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatus;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected updateEid(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "esim_id_value"

    if-nez p1, :cond_0

    .line 879
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->removeSettingFromScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 881
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updatePhoneNumber()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatus;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 447
    invoke-static {v1, p0}, Lcom/android/settingslib/DeviceInfoUtils;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "number_value"

    .line 446
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatus$mDialog;->setText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

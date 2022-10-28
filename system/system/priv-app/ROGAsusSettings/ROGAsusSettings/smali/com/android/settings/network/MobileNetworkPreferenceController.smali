.class public Lcom/android/settings/network/MobileNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;
    }
.end annotation


# static fields
.field static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"


# instance fields
.field private mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsSecondaryUser:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSummary:Ljava/lang/String;

.field mTelephonyCallback:Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$2;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string v0, "user"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "phone"

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    .line 80
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$1;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateDisplayName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private isSubscriptionInService(I)Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateDisplayName()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 150
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isSubscriptionInService(I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 153
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "mobile_network_settings"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 210
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mobile_network_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isUserRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserRestricted()Z
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_config_mobile_networks"

    .line 97
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 190
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 192
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 198
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 200
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 201
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    .line 204
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

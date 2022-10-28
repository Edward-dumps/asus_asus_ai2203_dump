.class public Lcom/android/settings/network/NetworkProviderCallsSmsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderCallsSmsController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mUserManager:Landroid/os/UserManager;

    .line 62
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private setSummaryResId(I)Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-class v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method protected getDefaultSmsSubscriptionId()I
    .locals 0

    .line 161
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultVoiceSubscriptionId()I
    .locals 0

    .line 156
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "calls_and_sms"

    return-object p0
.end method

.method protected getPreferredStatus(II)Ljava/lang/CharSequence;
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getDefaultSmsSubscriptionId()I

    move-result v3

    if-ne p2, v3, :cond_1

    move v1, v2

    .line 135
    :cond_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->isInService(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 140
    sget p1, Lcom/android/settings/R$string;->calls_sms_preferred:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 142
    sget p1, Lcom/android/settings/R$string;->calls_sms_calls_preferred:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 144
    sget p1, Lcom/android/settings/R$string;->calls_sms_sms_preferred:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, ""

    goto :goto_3

    :cond_6
    :goto_1
    if-le p1, v2, :cond_7

    .line 136
    sget p1, Lcom/android/settings/R$string;->calls_sms_unavailable:I

    goto :goto_2

    .line 137
    :cond_7
    sget p1, Lcom/android/settings/R$string;->calls_sms_temp_unavailable:I

    .line 136
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    .line 89
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget v0, Lcom/android/settings/R$string;->calls_sms_no_sim:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 98
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 99
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 104
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->isInService(I)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v6

    .line 109
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getPreferredStatus(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 116
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    const-string v3, ", "

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isInService(I)Z
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 217
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.class public Lcom/android/settings/network/MobileNetworkListController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkListController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;
    }
.end annotation


# static fields
.field static final KEY_ADD_MORE:Ljava/lang/String; = "add_more"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field mFragment:Landroidx/fragment/app/Fragment;

.field private mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$8416w0RUvWYTdcNpUDY7HpFBpC0(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/MobileNetworkListController;->lambda$update$0(Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 73
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 79
    :cond_0
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferences:Ljava/util/Map;

    .line 80
    iput-object p3, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 81
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic lambda$update$0(Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3, p2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 172
    invoke-static {p3}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v0}, Lcom/android/settings/network/SubscriptionUtil;->startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string p3, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0
.end method

.method private update()V
    .locals 12

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferences:Ljava/util/Map;

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferences:Ljava/util/Map;

    .line 121
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 129
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 130
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    if-nez v4, :cond_2

    .line 133
    new-instance v4, Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 136
    :cond_2
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    const-string v7, "SIM 1"

    const-string v9, "SIM 2"

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    .line 141
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    sget v5, Lcom/android/settings/R$string;->mobile_network_active_esim:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 145
    :cond_3
    invoke-static {v10}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v7, v9

    :goto_1
    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v4, v10}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 148
    sget v5, Lcom/android/settings/R$string;->mobile_network_inactive_esim:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 152
    :cond_5
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    .line 153
    iget-object v11, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 154
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v6

    const/4 v11, 0x6

    if-eq v6, v11, :cond_6

    .line 157
    sget v5, Lcom/android/settings/R$string;->mobile_network_active_sim:I

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 158
    :cond_6
    iget-object v6, p0, Lcom/android/settings/network/MobileNetworkListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 160
    invoke-static {v10}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, v9

    :goto_2
    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v4, v10}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 163
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->mobile_network_inactive_sim:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 165
    :cond_8
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->mobile_network_tap_to_activate:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    :goto_3
    new-instance v5, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings/network/MobileNetworkListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferences:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 183
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 184
    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 104
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "add_more"

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->update()V

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

.method public onAirplaneModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/MobileNetworkListController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 227
    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;->unregister()V

    .line 231
    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkListController;->mPhoneStateListener:Lcom/android/settings/network/MobileNetworkListController$PhoneCallStateListener;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkListController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->update()V

    return-void
.end method

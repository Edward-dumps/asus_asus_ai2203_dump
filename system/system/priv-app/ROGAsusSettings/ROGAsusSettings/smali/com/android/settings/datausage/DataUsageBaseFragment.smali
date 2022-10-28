.class public abstract Lcom/android/settings/datausage/DataUsageBaseFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DataUsageBaseFragment.java"


# instance fields
.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    return-void
.end method

.method private isDataEnabled(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getDataLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    const-string v1, "DataUsageBase"

    if-eqz v0, :cond_0

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDataLimitBytes(): return: policy.limitBytes: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-wide p0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide p0

    :cond_0
    const-string v0, "getDataLimitBytes(): policy == null, use info.limitLevel"

    .line 104
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataLimitBytes(): return: info.limitLevel: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-wide p0, p0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    return-wide p0
.end method

.method protected isAdmin()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method protected isBandwidthControlEnabled()Z
    .locals 2

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {p0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DataUsageBase"

    const-string v1, "problem talking with INetworkManagementService: "

    .line 92
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected isMobileDataAvailable(I)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isBandwidthControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p1, p1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isDataEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "network_management"

    .line 48
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 49
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "netstats"

    .line 50
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    .line 51
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "netpolicy"

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 54
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 56
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 58
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 59
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 65
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {p0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    return-void
.end method

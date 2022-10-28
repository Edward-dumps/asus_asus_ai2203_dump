.class public Lcom/android/settings/accelerateapps/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleteReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private forceSetProvisionToTrue(Landroid/content/Context;)V
    .locals 6

    const-string p0, "device_provisioned"

    const-string v0, "BootCompleteReceiver"

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.google.android.setupwizard.SetupWizardActivity"

    const-string v4, "ro.asus.product.name"

    const-string v5, "WW_"

    .line 70
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "com.asus.setupwizard"

    const-string v3, "com.asus.setupwizard.SetupWizardActivity"

    .line 75
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    .line 78
    invoke-static {p1, p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "user_setup_complete"

    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 80
    invoke-static {p1, p0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "forceSetProvisionToTrue = 1"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceSetProvisionToTrue: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_2
    :goto_0
    return-void
.end method

.method private setLockType(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    const-string v0, "user"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 99
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 101
    invoke-interface {v1, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    .line 102
    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 103
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eq p0, v0, :cond_1

    .line 105
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setSOSstatus(Landroid/content/Context;)V
    .locals 6

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_sos_touched_by_user"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "BootCompleteReceiver"

    const-string v2, "setSOSstatus on Bootcomplete"

    .line 141
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {p0, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    .line 144
    sget-object v2, Lcom/android/settings/Utils;->EMERGENCY_CALL_MCC_NUMBERS:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->handleUpdateSimSubscriptionInfo(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v3

    .line 145
    invoke-static {p1, v2}, Lcom/android/settings/Utils;->handleUpdateCellInfo(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v2

    .line 146
    invoke-static {}, Lcom/android/settings/Utils;->handleShippingInfo()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v1, v5

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->setEmergencyGestureEnabled(Z)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p2, "BootCompleteReceiver"

    const-string v0, "receive boot complete"

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->isSupportOptiFlex()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "user"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thisProcUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 41
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is AFW"

    .line 43
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "start serv"

    .line 45
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/accelerateapps/BootCompleteReceiver;->forceSetProvisionToTrue(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/accelerateapps/BootCompleteReceiver;->setLockType(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/accelerateapps/BootCompleteReceiver;->setSOSstatus(Landroid/content/Context;)V

    return-void
.end method

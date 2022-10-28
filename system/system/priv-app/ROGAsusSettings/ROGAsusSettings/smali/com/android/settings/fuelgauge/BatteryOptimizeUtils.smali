.class public Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;
.super Ljava/lang/Object;
.source "BatteryOptimizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;
    }
.end annotation


# instance fields
.field private mAllowListed:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mMode:I

.field private final mPackageName:Ljava/lang/String;

.field mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    .line 53
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    .line 54
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 55
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 56
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    .line 57
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    .line 58
    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    .line 59
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    return-void
.end method

.method private refreshState()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x46

    .line 124
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "refresh %s state, allowlisted = %s, mode = %d"

    .line 125
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryOptimizeUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAppUsageState()Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->refreshState()V

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->RESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 66
    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    if-nez v1, :cond_1

    .line 67
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->UNRESTRICTED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    .line 68
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    if-nez p0, :cond_2

    .line 69
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->OPTIMIZED:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object p0

    :cond_2
    const-string p0, "BatteryOptimizeUtils"

    const-string v0, "get unknown app usage state."

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;->UNKNOWN:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;

    return-object p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "unknown"

    :cond_0
    return-object p0
.end method

.method public isSystemOrDefaultApp()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

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

.method public isValidPackageName()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAppUsageState(Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$AppUsageState;)V
    .locals 4

    const-string v0, "BatteryOptimizeUtils"

    .line 78
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$1;->$SwitchMap$com$android$settings$fuelgauge$BatteryOptimizeUtils$AppUsageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p0, "set unknown app usage state."

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

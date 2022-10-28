.class public Lcom/android/settings/dualwifi/DualWifiUtils;
.super Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;
.source "DualWifiUtils.java"


# direct methods
.method public static forgetNetwork(Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    .line 289
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 291
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lasus/net/vicewifi/WifiViceManager;->forget(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static forgetNetworkForMainWifi(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getBandIndex(I)I
    .locals 2

    const/16 v0, 0x960

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x1324

    if-lt p0, v0, :cond_1

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x1725

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1bd5

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 275
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected frequency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DualWifiUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getSystemModeValue(Landroid/content/Context;)I
    .locals 2

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_systemmode"

    const/4 v1, -0x1

    .line 253
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getWifiConfigurationByKey(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 328
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 333
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 334
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getWifiConfigurationByKey(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 312
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 317
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 318
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getWifiConfigurationByNetwordId(Landroid/net/wifi/WifiManager;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 344
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 346
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 347
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiConfigurationByNetwordId(Lasus/net/vicewifi/WifiViceManager;I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 357
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 359
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 360
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiViceManager(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;
    .locals 1

    .line 245
    :try_start_0
    invoke-static {p0}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "DualWifiUtils"

    const-string v0, "Can\'t get ViceWifi instance"

    .line 247
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "device_policy"

    .line 93
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "user"

    .line 95
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string v4, "android.software.device_admin"

    .line 99
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    return v5

    :cond_1
    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    .line 109
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 111
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_3

    :goto_0
    move p1, v5

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    .line 117
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 121
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 122
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, p1, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    move p1, v0

    :goto_1
    if-nez p1, :cond_4

    return v0

    .line 133
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wifi_device_owner_configs_lockdown"

    .line 134
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_5

    move v0, v5

    :cond_5
    return v0
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 2

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSystemMode(Landroid/content/Context;)Z
    .locals 1

    .line 258
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

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

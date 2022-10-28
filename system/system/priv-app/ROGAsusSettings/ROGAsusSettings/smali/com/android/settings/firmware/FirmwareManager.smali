.class public Lcom/android/settings/firmware/FirmwareManager;
.super Ljava/lang/Object;
.source "FirmwareManager.java"


# static fields
.field private static final VERSION_PATHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "/sys/class/switch/pad/name"

    const-string v1, "/sys/class/switch/dock/name"

    const-string v2, "/sys/class/switch/camera/name"

    const-string v3, "/sys/class/switch/touch/name"

    const-string v4, "/sys/class/switch/scalar/name"

    const-string v5, "/sys/class/switch/pfs_touch/name"

    const-string v6, "/sys/class/switch/pfs_camera/name"

    const-string v7, "/sys/class/switch/pfs_pad_ec/name"

    const-string v8, "/sys/class/switch/pad_gic/name"

    const-string v9, "/sys/class/switch/dock_gic/name"

    const-string v10, "/sys/class/switch/digitizer/name"

    const-string v11, "/sys/class/extcon/battery/name"

    const-string v12, "/sys/class/switch/ia_fw/name"

    const-string v13, "/sys/class/switch/keyboard/name"

    const-string v14, "/sys/devices/virtual/extcon/mcu/name"

    const-string v15, "/sys/class/extcon/station_battery/name"

    .line 53
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/firmware/FirmwareManager;->VERSION_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public static canShowFirmwareVersion(I)Z
    .locals 3

    .line 72
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/settings/firmware/FirmwareManager;->VERSION_PATHS:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can show version for firmware,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ? "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FirmwareManager"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getFirmwareVersion(I)Ljava/lang/String;
    .locals 5

    .line 79
    invoke-static {p0}, Lcom/android/settings/firmware/FirmwareManager;->canShowFirmwareVersion(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/settings/firmware/FirmwareManager;->VERSION_PATHS:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 85
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 86
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-object v2, v1

    :catch_2
    :try_start_3
    const-string v0, "FirmwareManager"

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception when getting version for F/W type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 93
    :catch_4
    :cond_2
    throw p0
.end method

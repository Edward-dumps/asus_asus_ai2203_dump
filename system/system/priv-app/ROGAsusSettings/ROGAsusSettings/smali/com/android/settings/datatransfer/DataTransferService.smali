.class public Lcom/android/settings/datatransfer/DataTransferService;
.super Landroid/app/Service;
.source "DataTransferService.java"


# instance fields
.field private currentVersion:I

.field private mBackupVersion:I

.field private mRestoreVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lcom/android/settings/datatransfer/DataTransferService;->currentVersion:I

    .line 98
    iput v0, p0, Lcom/android/settings/datatransfer/DataTransferService;->mBackupVersion:I

    .line 99
    iput v0, p0, Lcom/android/settings/datatransfer/DataTransferService;->mRestoreVersion:I

    return-void
.end method

.method private backup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Backup] Check backup info: fileDir is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataTransferService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[backup] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not exist, create it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/datatransfer/DataTransferService;->getDeviceInfoFromDevice(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settings/datatransfer/DeviceInfo;

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferService;->prepareCommon(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferService;->prepareRingtone(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferService;->prepareNotification(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[copyFile] source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataTransferService"

    .line 646
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 650
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 651
    :try_start_1
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    .line 654
    invoke-virtual {v2, p1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 657
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 658
    invoke-virtual {v2, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 664
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 665
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 667
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    move-object v0, v2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p0, v0

    :goto_1
    move-object v0, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v0

    goto :goto_6

    :catch_3
    move-exception p1

    move-object p0, v0

    .line 660
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_1

    .line 664
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    .line 665
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 667
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    return v1

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v0, :cond_3

    .line 664
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_7

    :catch_5
    move-exception p0

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz p0, :cond_4

    .line 665
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 667
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    .line 670
    :cond_4
    :goto_9
    throw p1
.end method

.method public static createJsonData(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 629
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "DataTransferService"

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createJsonData] dataFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 632
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 634
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 635
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 636
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 637
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 639
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getDeviceInfoFromDevice(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settings/datatransfer/DeviceInfo;
    .locals 2

    const-string p0, "phone"

    .line 577
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 578
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p0

    .line 579
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DeviceInfo isMultiSimEnabled"

    .line 581
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    .line 588
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "device_info.dat"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/datatransfer/DataTransferService;->createJsonData(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0

    .line 591
    :cond_0
    new-instance p0, Lcom/android/settings/datatransfer/DeviceInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/datatransfer/DeviceInfo;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 583
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private prepareCommon(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "smart_reading"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 248
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Smart Reading"

    .line 250
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "Settings backup version"

    .line 251
    iget p0, p0, Lcom/android/settings/datatransfer/DataTransferService;->mBackupVersion:I

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "common_settings_item.dat"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/datatransfer/DataTransferService;->createJsonData(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private prepareMedia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone_sim1"

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    move-object/from16 v4, p1

    move v3, v8

    goto :goto_1

    :cond_0
    const-string v3, "ringtone_sim2"

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x100

    :goto_0
    move-object/from16 v4, p1

    goto :goto_1

    :cond_1
    const-string v3, "notification"

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "alarm"

    .line 318
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    goto :goto_0

    .line 325
    :goto_1
    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[prepareMedia] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " get uri is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "DataTransferService"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 329
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 331
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "_data"

    .line 332
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "title"

    .line 333
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_size"

    .line 334
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mime_type"

    .line 335
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v10, "artist"

    .line 336
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "duration"

    .line 337
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_ringtone"

    .line 338
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_notification"

    .line 339
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "is_alarm"

    .line 340
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_music"

    .line 341
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 343
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 346
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 348
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 349
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_4

    move v12, v8

    goto :goto_2

    :cond_4
    move v12, v3

    .line 350
    :goto_2
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_5

    move v13, v8

    goto :goto_3

    :cond_5
    move v13, v3

    .line 351
    :goto_3
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-lez v14, :cond_6

    move v14, v8

    goto :goto_4

    :cond_6
    move v14, v3

    .line 352
    :goto_4
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v15, :cond_7

    move v3, v8

    :cond_7
    move-object/from16 v16, v4

    move v4, v3

    move v3, v6

    move-object v6, v10

    move-object/from16 v10, v16

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_6

    :cond_8
    move v4, v3

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    move-object v5, v10

    move-object v6, v5

    move-object v7, v6

    :goto_5
    if-eqz v2, :cond_9

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v15, "Ringtone media_path"

    .line 363
    invoke-virtual {v2, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v15, "Ringtone media_title"

    .line 364
    invoke-virtual {v2, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "Ringtone media_size"

    .line 365
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_type"

    .line 366
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_artist"

    .line 367
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_duration"

    .line 368
    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_isRingtone"

    .line 369
    invoke-virtual {v2, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_isNotification"

    .line 370
    invoke-virtual {v2, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_isAlarm"

    .line 371
    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "Ringtone media_isMusic"

    .line 372
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[prepareMedia] get settingsItemJsonData :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/settings/datatransfer/DataTransferService;->createJsonData(Lorg/json/JSONObject;Ljava/lang/String;)V

    if-eqz v10, :cond_a

    .line 382
    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/settings/datatransfer/DataTransferService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_a
    return-void

    :catch_1
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 355
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_b

    .line 358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    :goto_7
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_c
    throw v0

    :cond_d
    return-void
.end method

.method private prepareNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification"

    .line 284
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/datatransfer/DataTransferService;->prepareMedia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private prepareRingtone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ringtone_sim1"

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/datatransfer/DataTransferService;->prepareMedia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ringtone_sim2"

    .line 280
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/datatransfer/DataTransferService;->prepareMedia(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "msg_name"

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataTransferService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "tunnel_started"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "package_name"

    if-eqz v2, :cond_0

    .line 125
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.futuredial.asusdatatransfer.action.TUNNEL_RESPONSE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "app_register"

    .line 126
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->data_transfer_msg_settings_ringtone_name:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "app_name"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->data_transfer_msg_settings_custom_ringtone_name:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "app_descr"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send message to register Settings by package name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "start_backup"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x64

    const-string v5, ", data_dir is "

    const-string v6, "data_dir"

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[start_backup] package_name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    .line 147
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/datatransfer/DataTransferService;->sendBackupBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferService;->backup(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/datatransfer/DataTransferService;->sendBackupBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "start_restore"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[start_restore] package_name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x14

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferService;->sendrestoreBroadcast(Landroid/content/Context;I)V

    .line 157
    invoke-direct {p0, p1, v2}, Lcom/android/settings/datatransfer/DataTransferService;->sendrestoreBroadcast(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendBackupBroadcast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 162
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.futuredial.asusdatatransfer.action.TUNNEL_RESPONSE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "msg_name"

    const-string v1, "backup_status"

    .line 163
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_transfer_msg_settings_ringtone_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_transfer_msg_settings_custom_ringtone_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_descr"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data_dir"

    .line 167
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "percent"

    const-string v0, "status"

    const/16 v1, 0x64

    if-ne p3, v1, :cond_0

    const-string p3, "done"

    .line 169
    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "continue"

    .line 172
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string p2, "DataTransferService"

    const-string p3, "Finish Backup and send broadcast"

    .line 176
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendrestoreBroadcast(Landroid/content/Context;I)V
    .locals 3

    .line 181
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.futuredial.asusdatatransfer.action.TUNNEL_RESPONSE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "msg_name"

    const-string v1, "restore_status"

    .line 182
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_transfer_msg_settings_ringtone_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->data_transfer_msg_settings_custom_ringtone_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_descr"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "percent"

    const-string v1, "status"

    const/16 v2, 0x64

    if-ne p2, v2, :cond_0

    const-string p2, "done"

    .line 187
    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v2, "continue"

    .line 190
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string p2, "DataTransferService"

    const-string v0, "Finish Restore and sendbroadcast"

    .line 195
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "DataTransferService"

    const-string v1, "enter onStartCommand "

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/datatransfer/DataTransferService;->processRequest(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

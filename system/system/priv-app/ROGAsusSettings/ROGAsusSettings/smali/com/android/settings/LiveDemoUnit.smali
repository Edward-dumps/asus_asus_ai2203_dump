.class public Lcom/android/settings/LiveDemoUnit;
.super Ljava/lang/Object;
.source "LiveDemoUnit.java"


# direct methods
.method public static AccFlagRead()I
    .locals 6

    .line 12
    new-instance v0, Ljava/io/File;

    const-string v1, "/ADF/ADF"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v1, "/dev/block/ADF"

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "/dev/block/demoflag"

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 28
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 30
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 33
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 37
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    move v0, v2

    :goto_3
    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    goto :goto_4

    :cond_3
    move v2, v0

    :goto_4
    return v2

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v3, :cond_4

    .line 37
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_4
    :goto_6
    throw v0
.end method

.method public static isDemoAppActivated()Z
    .locals 1

    .line 50
    invoke-static {}, Lcom/android/settings/LiveDemoUnit;->AccFlagRead()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

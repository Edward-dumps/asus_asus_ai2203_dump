.class public Lcom/android/settings/analytics/BluetoothDevicesDBManager;
.super Ljava/lang/Object;
.source "BluetoothDevicesDBManager.java"


# static fields
.field private static sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBManager;


# instance fields
.field private mDatabaseHelper:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->mDatabaseHelper:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/analytics/BluetoothDevicesDBManager;
    .locals 2

    const-class v0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/android/settings/analytics/BluetoothDevicesDBManager;

    invoke-direct {v1, p0}, Lcom/android/settings/analytics/BluetoothDevicesDBManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBManager;

    .line 35
    :cond_0
    sget-object p0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized insert(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->mDatabaseHelper:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "address"

    .line 56
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name"

    .line 57
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "major"

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "device_class"

    .line 59
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    const/4 p2, 0x1

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "BluetoothDevices"

    const/4 p3, 0x0

    const/4 p4, 0x5

    .line 61
    invoke-virtual {v0, p1, p3, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, -0x1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queryCount(Ljava/lang/String;)I
    .locals 9

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->mDatabaseHelper:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "address"

    const-string v2, "count"

    .line 40
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "BluetoothDevices"

    const-string v4, "address = ? "

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 44
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "count"

    .line 47
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 49
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->mDatabaseHelper:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "count"

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const-string p1, "BluetoothDevices"

    const-string v2, "address = ? "

    .line 70
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

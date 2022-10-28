.class public Lcom/android/settings/analytics/BluetoothDevicesDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BluetoothDevicesDBHelper.java"


# static fields
.field private static sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "BluetoothDevices.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS BluetoothDevices(address TEXT NOT NULL PRIMARY KEY, name TEXT, major INTEGER DEFAULT 0, device_class INTEGER DEFAULT 0, count INTEGER DEFAULT 0 )"

    .line 59
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/analytics/BluetoothDevicesDBHelper;
    .locals 2

    const-class v0, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;

    .line 41
    :cond_0
    sget-object p0, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;->sSingleton:Lcom/android/settings/analytics/BluetoothDevicesDBHelper;
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
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/BluetoothDevicesDBHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

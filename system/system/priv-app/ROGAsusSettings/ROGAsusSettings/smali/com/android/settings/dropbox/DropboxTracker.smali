.class public Lcom/android/settings/dropbox/DropboxTracker;
.super Ljava/lang/Object;
.source "DropboxTracker.java"


# static fields
.field private static final URI_STATUS:Landroid/net/Uri;

.field private static mInstance:Lcom/android/settings/dropbox/DropboxTracker;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropBoxManager:Landroid/os/DropBoxManager;

.field private mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

.field private mTagArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.asus.focusapplistener.game.GameAppProvider/gameAppMap"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dropbox/DropboxTracker;->URI_STATUS:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mTagArray:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mContext:Landroid/content/Context;

    const-string v0, "dropbox"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string v0, "DropboxRecordPrefs"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    iget-object p1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mTagArray:Ljava/util/ArrayList;

    const-string v0, "settings_connectivity"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mTagArray:Ljava/util/ArrayList;

    const-string p1, "system_dual_wifi"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dropbox/DropboxTracker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/dropbox/DropboxTracker;->implementDropboxUpload()V

    return-void
.end method

.method private appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 58
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string p0, "category"

    const-string v0, ""

    const-string v1, "DropboxTracker"

    const/4 v2, 0x0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/settings/dropbox/DropboxTracker;->URI_STATUS:Landroid/net/Uri;

    const-string p1, "is_game"

    const-string v5, "auto_start"

    filled-new-array {p1, v5, p0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "packagename = ?"

    const-string p1, "com.asus.gamewidget.status"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkgName = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string p0, "after finally"

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_3
    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/dropbox/DropboxTracker;
    .locals 2

    .line 46
    sget-object v0, Lcom/android/settings/dropbox/DropboxTracker;->mInstance:Lcom/android/settings/dropbox/DropboxTracker;

    if-nez v0, :cond_0

    .line 47
    const-class v0, Lcom/android/settings/dropbox/DropboxTracker;

    monitor-enter v0

    .line 48
    :try_start_0
    new-instance v1, Lcom/android/settings/dropbox/DropboxTracker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/dropbox/DropboxTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/dropbox/DropboxTracker;->mInstance:Lcom/android/settings/dropbox/DropboxTracker;

    .line 49
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 51
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/dropbox/DropboxTracker;->mInstance:Lcom/android/settings/dropbox/DropboxTracker;

    return-object p0
.end method

.method private implementDropboxUpload()V
    .locals 8

    const-string v0, "DropboxTracker"

    const-string v1, "Settings implementDropboxUpload"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dropbox/DropboxTracker;->mTagArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    invoke-virtual {v3, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "settings_connectivity"

    .line 100
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Exception = "

    if-eqz v5, :cond_3

    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    invoke-virtual {v5, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/android/settings/dropbox/DropboxTracker;->updateSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "system_dual_wifi"

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    invoke-static {v3}, Lcom/android/settings/dropbox/DropboxUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/settings/dropbox/DropboxTracker;->updateSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private updateSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addA2dpActiveBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "bt_a2dp_active_device_time="

    const-string v1, "settings_connectivity"

    if-eqz p2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bt_a2dp_active_device_name"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/dropbox/DropboxTracker;->appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " off "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/dropbox/DropboxTracker;->appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addConnectivityBluetoothInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt_connected_device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bt_connected_device_address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "bt_connected_device_major"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bt_connected_device_deviceclass"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "settings_connectivity"

    invoke-direct {p0, p2, p1}, Lcom/android/settings/dropbox/DropboxTracker;->appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addConnectivityWifiInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifi_ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wifi_bssid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "wifi_is_5GHz"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "settings_connectivity"

    invoke-direct {p0, p2, p1}, Lcom/android/settings/dropbox/DropboxTracker;->appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDualWifiText(Ljava/lang/String;)V
    .locals 4

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pkgname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/dropbox/DropboxTracker;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0, v3}, Lcom/android/settings/dropbox/DropboxTracker;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "curTime"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "system_dual_wifi"

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/android/settings/dropbox/DropboxTracker;->appendSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSharedPreferenceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropboxRecordSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public outputAllDropbox()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxTracker;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/dropbox/DropboxTracker$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dropbox/DropboxTracker$1;-><init>(Lcom/android/settings/dropbox/DropboxTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "DROPBOX_UPLOAD_THREAD"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload_time"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/dropbox/DropboxTracker;->updateSharedPreferenceData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

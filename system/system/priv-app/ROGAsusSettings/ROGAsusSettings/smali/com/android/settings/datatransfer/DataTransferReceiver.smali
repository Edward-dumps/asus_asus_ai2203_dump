.class public Lcom/android/settings/datatransfer/DataTransferReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataTransferReceiver.java"


# static fields
.field private static boradcastSender:Ljava/lang/String; = null

.field private static originalSMSapp:Ljava/lang/String; = ""


# instance fields
.field private isCopySuccess:Z

.field private mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$f6vdPiDjb4pUPzjWCEEpjY7Jbd8(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/datatransfer/DataTransferReceiver;->lambda$setDefaultSMSApp$0(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    .line 84
    new-instance v0, Lcom/android/settings/datatransfer/DataTransferReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datatransfer/DataTransferReceiver$1;-><init>(Lcom/android/settings/datatransfer/DataTransferReceiver;)V

    iput-object v0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private HandleRestoreRequest(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v6

    goto :goto_1

    :sswitch_0
    const-string v4, "com.futuredial.asusdatatransfer.action.TUNNEL_COPY_FILES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :sswitch_1
    const-string v4, "com.futuredial.datatransfer.ACTION_SET_AS_DEFAULT_MESSAGING_APP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :sswitch_2
    const-string v4, "com.futuredial.datatransfer.ACTION_RESTORE_DEFAULT_MESSAGING_APP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v4, "sender"

    const-string v9, "Default SMS app : "

    const-string v10, ""

    const-string v11, "DataTransferReceiver"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 139
    :pswitch_0
    iput-boolean v7, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    const-string v4, "destination"

    .line 142
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "packageName"

    .line 143
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "type"

    .line 144
    invoke-virtual {v0, v13, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 145
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.futuredial.asusdatatransfer.action.TUNNEL_COPY_FILES_FINISH"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "source"

    const-string v3, "result"

    const-string v8, "Result:"

    if-eqz v9, :cond_3

    .line 149
    :try_start_0
    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v15, v0

    move-object v0, v10

    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_4

    const-string v0, "Backup flow, move dialer file form private to public"

    .line 157
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {v1, v15}, Lcom/android/settings/datatransfer/DataTransferReceiver;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v15, v0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->copyFileByUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 160
    :cond_4
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "Restore flow, move dialer file form public to private"

    .line 162
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {v1, v0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->getUriForFilePath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {v2, v12, v0, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 166
    invoke-virtual {v2, v12, v0, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 167
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string v0, "Source uri is null, no file in source path"

    .line 169
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 170
    :try_start_1
    iput-boolean v5, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-virtual {v14, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :catch_0
    move-exception v0

    move v4, v5

    goto :goto_4

    :cond_6
    const-string v0, "Not eather public or private, return fail"

    .line 174
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    .line 175
    :try_start_3
    iput-boolean v4, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :goto_3
    invoke-virtual {v14, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    .line 178
    :goto_4
    :try_start_4
    iput-boolean v4, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    invoke-virtual {v14, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean v0, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {v14, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v2, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 181
    :goto_6
    invoke-virtual {v14, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean v1, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    invoke-virtual {v14, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {v14, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v2, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    throw v0

    .line 116
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datatransfer/DataTransferReceiver;->getDefaultSMSAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_7
    if-eqz v3, :cond_8

    .line 120
    sput-object v3, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    .line 121
    :cond_8
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setDefaultSMSApp(Ljava/lang/String;)V

    .line 123
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datatransfer/DataTransferReceiver;->getDefaultSMSAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 127
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "originalSMSapp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 129
    sget-object v3, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setDefaultSMSApp(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datatransfer/DataTransferReceiver;->boradcastSender:Ljava/lang/String;

    .line 132
    iget-object v0, v1, Lcom/android/settings/datatransfer/DataTransferReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datatransfer/DataTransferReceiver;->getDefaultSMSAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41355647 -> :sswitch_2
        0xf6ec916 -> :sswitch_1
        0x3dacc347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/settings/datatransfer/DataTransferReceiver;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setSenderSMSApp()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datatransfer/DataTransferReceiver;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setDefaultSMSAppAgain()V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x1000

    new-array p0, p0, [B

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 351
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p2, p0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private copyFileByUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 276
    :cond_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p1, :cond_2

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datatransfer/DataTransferReceiver;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 279
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 283
    :cond_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private getDefaultSMSAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    .line 194
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 339
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getUriForFilePath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    .line 229
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "DataTransferReceiver"

    if-nez v1, :cond_0

    const-string p1, "Source file not exist, retunr fail"

    .line 231
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-boolean v3, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->isCopySuccess:Z

    return-object v2

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v5, "com.android.settings.files"

    if-eqz v1, :cond_5

    const-string v1, "Source file is directory"

    .line 236
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is filenems null? :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    array-length v1, v0

    :goto_1
    const-string v6, ""

    if-ge v3, v1, :cond_3

    .line 243
    aget-object v7, v0, v3

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    aget-object v0, v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v6

    .line 248
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filename:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v2

    .line 253
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {p0, v5, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 259
    :cond_5
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    invoke-static {p0, v5, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDefaultSMSApp$0(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 216
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "DataTransferReceiver"

    if-eqz p1, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package added as role holder, role: android.app.role.SMS, package: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove package as role holder, role: android.app.role.SMS, package: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setDefaultSMSApp(Ljava/lang/String;)V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/role/RoleManager;

    .line 215
    new-instance v7, Lcom/android/settings/datatransfer/DataTransferReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lcom/android/settings/datatransfer/DataTransferReceiver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const-string v2, "android.app.role.SMS"

    const/4 v4, 0x0

    move-object v3, p1

    .line 224
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setDefaultSMSAppAgain()V
    .locals 1

    .line 208
    sget-object v0, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setDefaultSMSApp(Ljava/lang/String;)V

    const-string p0, ""

    .line 209
    sput-object p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->originalSMSapp:Ljava/lang/String;

    return-void
.end method

.method private setSenderSMSApp()V
    .locals 3

    .line 203
    sget-object v0, Lcom/android/settings/datatransfer/DataTransferReceiver;->boradcastSender:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/datatransfer/DataTransferReceiver;->setDefaultSMSApp(Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 100
    iput-object p1, p0, Lcom/android/settings/datatransfer/DataTransferReceiver;->mAppContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataTransferReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/datatransfer/DataTransferReceiver;->HandleRestoreRequest(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.futuredial.asusdatatransfer.action.TUNNEL_REQUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 106
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/datatransfer/DataTransferService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p0, p2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
